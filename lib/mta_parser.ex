defmodule MtaParser do
  alias NimbleCSV.RFC4180, as: CSV

  @spec is_deleted?(%TransitRealtime.FeedEntity{}) :: boolean()
  def is_deleted?(%TransitRealtime.FeedEntity{} = feed_entity), do: feed_entity.is_deleted == true

  @spec has_vehicle?(%TransitRealtime.FeedEntity{}) :: boolean()
  def has_vehicle?(%TransitRealtime.FeedEntity{} = feed_entity), do: feed_entity.vehicle != nil

  @spec is_feed_entity?(term()) :: boolean()
  def is_feed_entity?(%TransitRealtime.FeedEntity{} = _), do: true

  def is_feed_entity?(_), do: false

  @spec read_stops() :: %{String.t() => Stop.t()}
  @doc """
  Map of stop_id to Stop struct
  """
  def read_stops do
    File.stream!("lib/defs/gtfs_subway/stops.txt")
    |> CSV.parse_stream()
    |> Stream.map(fn [stop_id, stop_name, stop_lat, stop_lon, location_type, parent_station] ->
      %Stop{
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