defmodule Mta.Io.Api.Http do
  @behaviour Mta.Io.Api

  @feed_message_key :mta_io_api__get_feed_message_key

  @spec get_feed_message() :: %TransitRealtime.FeedMessage{}
  defp get_feed_message() do
    {:ok, resp} =
      Req.get(Mta.Constants.URL.mta_realtime_gtfs())

    Protox.decode!(resp.body, TransitRealtime.FeedMessage)
  end

  @spec get_feed_message_cached(number()) :: %TransitRealtime.FeedMessage{}
  @impl true
  def get_feed_message_cached(timeout_seconds \\ 20) do
    Mta.Cache.get_set_expired(@feed_message_key, timeout_seconds, &get_feed_message/0)
  end
end
