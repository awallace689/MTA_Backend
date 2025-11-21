defmodule Mta.Io.Api.Http do
  @behaviour Mta.Io.Api

  @spec get_feed_message() :: %TransitRealtime.FeedMessage{}
  def get_feed_message() do
    {:ok, resp} =
      Req.get(Mta.Constants.URL.mta_realtime_gtfs())

    Protox.decode!(resp.body, TransitRealtime.FeedMessage)
  end
end
