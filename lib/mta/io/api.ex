defmodule Mta.Io.Api do
  @feed_message_key :mta_io_api__get_feed_message_key

  @spec get_feed_message() :: %TransitRealtime.FeedMessage{}
  def get_feed_message() do
    {:ok, resp} =
      Req.get(Mta.Constants.URL.mta_realtime_gtfs())

    Protox.decode!(resp.body, TransitRealtime.FeedMessage)
  end

  @spec get_feed_message_cached(number()) :: %TransitRealtime.FeedMessage{}
  @doc """
  FeedMessage containing MTA realtime data payload
  """
  def get_feed_message_cached(timeout_seconds \\ 20) do
    Mta.Cache.get_set_expired(@feed_message_key, timeout_seconds, &get_feed_message/0)
  end
end
