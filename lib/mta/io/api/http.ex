defmodule MTA.IO.API.HTTP.FeedMessageError do
  defexception message: "Failed to fetch feed message"
end

defmodule MTA.IO.API.HTTP do
  alias MTA.IO.API.HTTP.FeedMessageError

  @behaviour MTA.IO.API

  @spec get_feed_message() :: %TransitRealtime.FeedMessage{}
  def get_feed_message() do
    req_options = Application.fetch_env!(:mta, :feed_message_req_options)

    resp =
      case Req.get(Keyword.merge([url: MTA.Constants.URL.mta_realtime_gtfs()], req_options)) do
        {:ok, resp} -> resp
        {:error, reason} -> raise FeedMessageError, message: "Request failed: #{inspect(reason)}"
      end

    if resp.status != 200 do
      raise FeedMessageError, message: "Bad response code: HTTP #{resp.status}"
    end

    Protox.decode!(resp.body, TransitRealtime.FeedMessage)
  end
end
