defmodule Mta.Io.Api.Http.FeedMessageError do
  defexception message: "Failed to fetch feed message"
end

defmodule Mta.Io.Api.Http do
  alias Mta.Io.Api.Http.FeedMessageError

  @behaviour Mta.Io.Api

  @spec get_feed_message() :: %TransitRealtime.FeedMessage{}
  def get_feed_message() do
    req_options = Application.fetch_env!(:mta, :feed_message_req_options)

    resp =
      case Req.get(Keyword.merge([url: Mta.Constants.URL.mta_realtime_gtfs()], req_options)) do
        {:ok, resp} -> resp
        {:error, reason} -> raise FeedMessageError, message: "Request failed: #{inspect(reason)}"
      end

    if resp.status != 200 do
      raise FeedMessageError, message: "Bad response code: HTTP #{resp.status}"
    end

    Protox.decode!(resp.body, TransitRealtime.FeedMessage)
  end
end
