alias NimbleCSV.RFC4180, as: CSV

defmodule Stop do
  @moduledoc """
  Stop struct, schema and data defined by MTA GTFS
  """
  defstruct [:stop_id, :stop_name, :stop_lat, :stop_lon, :location_type, :parent_station]
end

defmodule MtaParser do
  @spec is_feed_entity?(term()) :: boolean()
  def is_feed_entity?(%TransitRealtime.FeedEntity{} = _) do
    true
  end

  def is_feed_entity?(_) do
    false
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
  @moduledoc """
  Documentation for `Mta`.
  """

  @stops MtaParser.read_stops()

  @spec print_messages(TransitRealtime.FeedMessage.t()) :: :ok
  def print_messages(%TransitRealtime.FeedMessage{} = feed_message) do
    feed_message.entity
    |> Enum.filter(&MtaParser.is_feed_entity?/1)
    |> tap(&IO.inspect(&1, limit: :infinity))

    IO.puts("Total Count: #{length(feed_message.entity)}")
  end

  @spec main() :: :ok
  def main() do
    {:ok, resp} =
      Req.get("https://api-endpoint.mta.info/Dataservice/mtagtfsfeeds/nyct%2Fgtfs-nqrw")

    feed_message = Protox.decode!(resp.body, TransitRealtime.FeedMessage)
    FileUtils.write_feed_message_json(feed_message)

    FileUtils.write_file(
      inspect(feed_message, limit: :infinity, pretty: true),
      "inspect__feed_message.ex"
    )

    FileUtils.write_file(
      inspect(@stops, limit: :infinity, pretty: true),
      "inspect__stops.ex"
    )

    print_messages(feed_message)
  end
end
