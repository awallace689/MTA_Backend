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

    @ets_undefined :undefined

    @spec init() :: :ets.infoList()
    @doc """
    Initialize the data cache. Must be called before accessing any data.
    """
    def init() do
      case :ets.info(Data.table_key()) do
        @ets_undefined -> :ets.info(:ets.new(Data.table_key(), [:set, :named_table]))
        info -> info
      end
    end

    @spec stops() :: %{String.t() => Stop.t()}
    @doc """
    Map of stop ID to stop struct. Data provided by MTA GTFS.
    """
    def stops() do
      case :ets.lookup(Data.table_key(), @stops_key) do
        [] ->
          stops = Mta.Parser.Stops.read_stops()
          :ets.insert(Data.table_key(), {@stops_key, stops})

          stops

        stops_kv ->
          stops_kv[@stops_key]
      end
    end

    defmodule Local do
      @moduledoc """
      Locally-stored mock responses for offline dev
      """

      @local_key :local

      def load_response(filename) do
        {:ok, contents} = File.read("./out/#{filename}")
        {value, []} = Code.eval_string(contents)

        :ets.insert(Data.table_key(), {@local_key, value})
      end

      @spec response() :: %TransitRealtime.FeedMessage{}
      @doc """
      Map of stop ID to stop struct. Data provided by MTA GTFS.
      """

      def response() do
        case :ets.lookup(Data.table_key(), @local_key) do
          [] ->
            {:error, "Local response not loaded."}

          local_kv ->
            local_kv[@local_key]
        end
      end
    end
  end
end
