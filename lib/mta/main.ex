defmodule Mta.Main do
  @moduledoc """
  Parse and format MTA GTFS and GTFS Realtime data
  """

  @spec print_messages(TransitRealtime.FeedMessage.t()) :: :ok
  def print_messages(%TransitRealtime.FeedMessage{} = feed_message) do
    feed_message.entity
    |> Enum.filter(
      &(Mta.Parser.FeedMessage.is_feed_entity?(&1) and
          Mta.Parser.FeedEntity.has_vehicle?(&1))
    )
    |> tap(&IO.puts("Subway Count: #{length(&1)}"))
  end

  @spec main() :: :ok
  def main() do
    Mta.Data.Cached.init()

    {:ok, resp} =
      Req.get(Mta.Constants.URL.mta_realtime_gtfs())

    feed_message = Protox.decode!(resp.body, TransitRealtime.FeedMessage)
    Mta.Utils.File.write_feed_message_json(feed_message)

    Mta.Utils.File.write_file(
      inspect(feed_message, limit: :infinity, pretty: true),
      "inspect__feed_message.ex"
    )

    Mta.Utils.File.write_file(
      inspect(Mta.Data.Cached.stops(), limit: :infinity, pretty: true),
      "inspect__stops.ex"
    )

    print_messages(feed_message)

    :ok
  end
end
