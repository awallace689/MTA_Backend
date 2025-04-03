defmodule Mta.Cache do
  alias __MODULE__.TimestampValue

  @moduledoc """
  Cached data. Implemented with :ets
  """

  @table_key :mta_cache__table_key

  @ets_undefined :undefined

  @spec init() :: :ets.infoList()
  @doc """
  Initialize the data cache. Must be called before accessing any data.
  """
  def init() do
    case :ets.info(@table_key) do
      @ets_undefined ->
        :ets.info(:ets.new(@table_key, [:set, :named_table]))

      info ->
        info
    end
  end

  @spec clear_key(term()) :: true
  def clear_key(key) do
    :ets.delete(@table_key, key)
  end

  @spec get_set_expired(atom(), number() | :no_timeout, fun()) :: term()
  def get_set_expired(key, timeout_seconds, load) do
    kv = :ets.lookup(@table_key, key)

    use_cache =
      kv != [] && !TimestampValue.expired?(kv[key].timestamp, timeout_seconds)

    case(use_cache) do
      false ->
        data = load.()

        :ets.insert(
          @table_key,
          {key, TimestampValue.new(data)}
        )

        data

      true ->
        kv[key].value
    end
  end
end
