alias NimbleCSV.RFC4180, as: CSV

defmodule Mta.Parser.Stops do
  @spec read_stops() :: %{String.t() => %Mta.Models.Stop{}}
  @doc """
  Map of stop_id to Stop struct
  """
  def read_stops do
    File.stream!("lib/defs/gtfs_subway/stops.txt")
    |> CSV.parse_stream()
    |> Stream.map(fn [stop_id, stop_name, stop_lat, stop_lon, location_type, parent_station] ->
      %Mta.Models.Stop{
        stop_id: stop_id,
        stop_name: stop_name,
        stop_lat: stop_lat,
        stop_lon: stop_lon,
        location_type: location_type,
        parent_station: parent_station
      }
    end)
    |> Enum.to_list()
    |> Enum.map(fn stop -> {stop.stop_id, stop} end)
    |> Map.new()
  end
end
