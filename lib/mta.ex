alias NimbleCSV.RFC4180, as: CSV

defmodule Stop do
  @moduledoc """
  Stop struct, schema and data defined by MTA GTFS
  """
  defstruct [:stop_id, :stop_name, :stop_lat, :stop_lon, :location_type, :parent_station]
end

defmodule SimpleFeedEntity do
  defstruct [:stop_id, :current_status, :route_id, :id]
end

defmodule MtaParser do
  alias TransitRealtime.FeedMessage

  def proto_to_json_file(decoded_binary) do
    json_iodata = FeedMessage.json_encode!(decoded_binary)
    File.write!("./out/FeedMessage.json", json_iodata, [:write])
  end

  @spec read_stops() :: %{String.t() => Stop.t()}
  @doc """
  Map of stop_id to Stop struct
  """
  def read_stops do
    File.stream!("./lib/defs/gtfs_subway/stops.txt")
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

defmodule Mta do
  alias TransitRealtime.FeedMessage

  @moduledoc """
  Documentation for `Mta`.
  """

  @stops MtaParser.read_stops()

  @spec is_vehicle?(FeedEntity.t()) :: boolean()
  def is_vehicle?(feed_entity) do
    Map.has_key?(feed_entity, :vehicle) and Map.has_key?(feed_entity, :id)
  end

  @spec format_feed_entity(TransitRealtime.FeedEntity.t()) :: List.t(SimpleFeedEntity.t())
  def format_feed_entity(feed_entity) do
    %SimpleFeedEntity{
      id: feed_entity.id,
      route_id: feed_entity.vehicle.routeId,
      stop_id: @stops[feed_entity.vehicle.stopId],
      current_status: feed_entity.vehicle.currentStatus
    }
  end

  @spec print_messages(FeedMessage.t()) :: nil
  def print_messages(feed_message) do
    feed_message.entity
    |> Enum.filter(&is_vehicle?/1)
    |> Enum.map(&format_feed_entity/1)
    |> Enum.map(&IO.inspect/1)
  end

  @spec main() :: nil
  def main() do
    {:ok, resp} =
      Req.get("https://api-endpoint.mta.info/Dataservice/mtagtfsfeeds/nyct%2Fgtfs-nqrw")

    decoded_binary = FeedMessage.decode!(resp.body)
    MtaParser.proto_to_json_file(decoded_binary)

    print_messages(decoded_binary)
  end
end
