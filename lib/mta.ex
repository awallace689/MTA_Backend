defmodule Mta do
  @moduledoc """
  Parse and format MTA GTFS and GTFS Realtime data
  """

  @spec print_messages(TransitRealtime.FeedMessage.t()) :: :ok
  def print_messages(%TransitRealtime.FeedMessage{} = feed_message) do
    feed_message.entity
    |> Enum.filter(&(MtaParser.is_feed_entity?(&1) and MtaParser.has_vehicle?(&1)))
    |> tap(fn vehicles -> IO.puts("Subway Count: #{length(vehicles)}") end)
  end

  @spec main() :: :ok
  def main() do
    DataCache.init()

    {:ok, resp} =
      Req.get("https://api-endpoint.mta.info/Dataservice/mtagtfsfeeds/nyct%2Fgtfs-nqrw")

    feed_message = Protox.decode!(resp.body, TransitRealtime.FeedMessage)
    FileUtils.write_feed_message_json(feed_message)

    FileUtils.write_file(
      inspect(feed_message, limit: :infinity, pretty: true),
      "inspect__feed_message.ex"
    )

    FileUtils.write_file(
      inspect(DataCache.stops(), limit: :infinity, pretty: true),
      "inspect__stops.ex"
    )

    print_messages(feed_message)
    DataCache.stops()

    :ok
  end
end
