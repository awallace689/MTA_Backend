defmodule Mta.Data do
  @moduledoc """
  Accessor functions for parsed MTA GTFS and GTFS Realtime data
  """
  defmodule Cached do
    @moduledoc """
    Static data, cached in memory after first use. Implemented with :ets
    """
    @table :data
    @stops_key :stops

    @ets_undefined :undefined

    @spec init() :: :ets.infoList()
    @doc """
    Initialize the data cache. Must be called before accessing any data.
    """
    def init() do
      case :ets.info(@table) do
        @ets_undefined -> :ets.info(:ets.new(@table, [:set, :named_table]))
        info -> info
      end
    end

    @spec stops() :: %{String.t() => Stop.t()}
    @doc """
    Map of stop ID to stop struct. Data provided by MTA GTFS.
    """
    def stops() do
      case :ets.lookup(@table, @stops_key) do
        [] ->
          stops = Mta.Parser.Stops.read_stops()
          :ets.insert(@table, {@stops_key, stops})

          stops

        stops_kv ->
          stops_kv[@stops_key]
      end
    end
  end
end
