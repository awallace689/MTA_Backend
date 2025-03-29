defmodule Mta.Cache do
  @moduledoc """
  Cached data. Implemented with :ets
  """

  @spec table_key() :: String.t()
  defp table_key(), do: :data

  @stops_key :stops_key
  @response_key :response_key
  @ets_undefined :undefined

  @spec init() :: :ets.infoList()
  @doc """
  Initialize the data cache. Must be called before accessing any data.
  """
  def init() do
    case :ets.info(table_key()) do
      @ets_undefined ->
        :ets.info(:ets.new(table_key(), [:set, :named_table]))

      info ->
        info
    end
  end

  @spec clear() :: :ok
  def clear() do
    clear_key(@response_key)
  end

  @spec clear_key(atom()) :: :ok
  def clear_key(key) do
    :ets.delete(table_key(), key)
  end

  @spec get_set_expired(atom(), number() | :no_timeout, fun()) :: term()
  def get_set_expired(key, timeout_seconds, load) do
    kv = :ets.lookup(table_key(), key)

    use_cache =
      kv != [] && __MODULE__.TimestampValue.expired?(kv[key].timestamp, timeout_seconds)

    case(use_cache) do
      false ->
        data = load.()

        :ets.insert(
          table_key(),
          {key, __MODULE__.TimestampValue.new(value: data)}
        )

        data

      true ->
        kv[key].value
    end
  end

  @spec stops(number()) :: %{String.t() => Stop.t()}
  @doc """
  Map of stop ID to stop struct. Data provided by MTA GTFS.
  """
  def stops(timeout_seconds \\ nil) do
    load = fn -> Mta.Parser.Stops.read_stops() end
    get_set_expired(@stops_key, timeout_seconds, load)
  end

  @spec feed_message(number()) :: %TransitRealtime.FeedMessage{}
  @doc """
  FeedMessage containing MTA realtime data payload
  """
  def feed_message(timeout_seconds \\ 20) do
    load = fn ->
      {:ok, resp} =
        Req.get(Mta.Constants.URL.mta_realtime_gtfs())

      Protox.decode!(resp.body, TransitRealtime.FeedMessage)
    end

    get_set_expired(@response_key, timeout_seconds, load)
  end
end
