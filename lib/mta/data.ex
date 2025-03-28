alias Mta.Data

defmodule Mta.Data do
  @moduledoc """
  Accessor functions for parsed MTA GTFS and GTFS Realtime data
  """

  @spec table_key() :: String.t()
  def table_key() do
    :data
  end

  defmodule Cached do
    @moduledoc """
    Static data, cached in memory after first use. Implemented with :ets
    """

    @stops_key :stops
    @response_key :response_key
    @ets_undefined :undefined

    defmodule TimestampValue do
      defstruct timestamp: nil, value: nil
    end

    @spec init() :: :ets.infoList()
    @doc """
    Initialize the data cache. Must be called before accessing any data.
    """
    def init() do
      case :ets.info(Data.table_key()) do
        @ets_undefined ->
          :ets.info(:ets.new(Data.table_key(), [:set, :named_table]))

        info ->
          info
      end
    end

    @spec clear(keys: [Atom.t()]) :: :ok
    def clear(keys \\ [@response_key]) do
      for key <- keys do
        :ets.delete(Data.table_key(), key)
      end
    end

    @spec get_set_expired(atom(), number() | nil, fun()) :: term()
    def get_set_expired(key, timeout_seconds, load) do
      kv = :ets.lookup(Data.table_key(), key)

      use_cache =
        kv != [] && !expired?(kv[key].timestamp, timeout_seconds)

      case(use_cache) do
        false ->
          data = load.()
          :ets.insert(Data.table_key(), {key, create_timestamp_value(data)})

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

    @spec feed_message() :: %TransitRealtime.FeedMessage{}
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

    @spec create_timestamp_value(term()) :: TimestampValue.t()
    defp create_timestamp_value(value) do
      %TimestampValue{value: value, timestamp: DateTime.utc_now()}
    end

    # A timestamp is always expired if it is missing or time elapsed is greater than `timeout`.
    # A non-`nil` timestamp is never expired if `timeout` is `nil`.
    @spec expired?(DateTime.t(), number(), :day | :hour | :minute | System.time_unit()) ::
            boolean()
    defp expired?(timestamp, timeout, unit \\ :second)

    defp expired?(timestamp, timeout, _)
         when is_nil(timestamp) or
                timeout == 0 do
      true
    end

    defp expired?(_, nil, _), do: false

    defp expired?(timestamp, timeout, unit) do
      DateTime.diff(DateTime.utc_now(), timestamp, unit) > timeout
    end

    defmodule Local do
      @moduledoc """
      Locally-stored mock responses for offline dev
      """

      @local_response_key :local

      @spec feed_message(String.t() | nil) :: %TransitRealtime.FeedMessage{}
      @doc """
      Map of stop ID to stop struct. Data provided by MTA GTFS.
      """
      def feed_message(filename) do
        load = fn ->
          {:ok, contents} = File.read("./out/#{filename}")
          {value, []} = Code.eval_string(contents)

          value
        end

        Data.Cached.get_set_expired(@local_response_key, nil, load)
      end
    end
  end
end
