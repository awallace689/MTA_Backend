defmodule DataCache do
  @moduledoc """
  Static data, cached in memory after first use
  """
  @table :data
  @stops_key :stops

  @ets_undefined :undefined

  @spec init() :: number()
  @doc """
  Initialize the data cache. Must be called before accessing any data.
  """
  def init() do
    case :ets.info(@table) do
      @ets_undefined -> :ets.new(@table, [:set, :named_table])
      pid -> pid
    end
  end

  @spec stops() :: %{String.t() => Stop.t()}
  @doc """
  Map of stop ID to stop struct. Data provided by MTA GTFS.
  """
  def stops() do
    case :ets.lookup(@table, @stops_key) do
      [] ->
        stops = MtaParser.read_stops()
        :ets.insert(@table, {@stops_key, stops})

        stops

      stops ->
        stops
    end
  end
end