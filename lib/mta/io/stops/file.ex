alias NimbleCSV.RFC4180, as: CSV

defmodule MTA.IO.Stops.File do
  @behaviour MTA.IO.Stops

  @spec read_stops() :: %{String.t() => MTA.Models.Stop.t()}
  def read_stops do
    File.stream!("lib/defs/gtfs_subway/stops.txt")
    |> CSV.parse_stream()
    |> Stream.map(&create_stop/1)
    |> Enum.to_list()
    |> Enum.map(fn stop -> {stop.stop_id, stop} end)
    |> Map.new()
  end

  @spec create_stop(line_arr :: list(String.t())) ::
          MTA.Models.Stop.t()
  defp create_stop([
         stop_id,
         stop_name,
         stop_lat,
         stop_lon,
         location_type,
         parent_station
       ]),
       do: %MTA.Models.Stop{
         stop_id: stop_id,
         stop_name: stop_name,
         stop_lat: stop_lat,
         stop_lon: stop_lon,
         location_type: location_type,
         parent_station: parent_station
       }
end
