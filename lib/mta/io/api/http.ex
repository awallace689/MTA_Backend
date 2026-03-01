defmodule Mta.Io.Api.Http.FeedMessageError do
  defexception message: "Failed to fetch feed message"
end

defmodule Mta.Io.Api.Http do
  alias Mta.Io.Api.Http.FeedMessageError

  @behaviour Mta.Io.Api

  @spec get_feed_message() :: %TransitRealtime.FeedMessage{}
  def get_feed_message() do
    req_options = Application.fetch_env!(:mta, :feed_message_req_options)

    {:ok, resp} =
      Req.get(Keyword.merge([url: Mta.Constants.URL.mta_realtime_gtfs()], req_options))

    if resp.status != 200 do
      raise FeedMessageError, message: "Failed to fetch feed message: HTTP #{resp.status}"
    end

    Protox.decode!(resp.body, TransitRealtime.FeedMessage)
  end
end
