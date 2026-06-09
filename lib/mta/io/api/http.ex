defmodule MTA.IO.API.HTTP.FeedMessageError do
  defexception message: "Failed to fetch feed message"
end

defmodule MTA.IO.API.HTTP do
  alias MTA.IO.API.HTTP.FeedMessageError

  @behaviour MTA.IO.API

  @spec get_feed_message() :: MTA.Models.FeedMessage.t()
  def get_feed_message() do
    feed_message = get_mta_feed_message()

    %MTA.Models.FeedMessage{
      header: feed_message.header,
      entity:
        Enum.map(
          feed_message.entity,
          &struct(MTA.Models.FeedEntity, Map.from_struct(&1))
        ),
      __uf__: feed_message.__uf__
    }
  end

  defp get_mta_feed_message() do
    req_options = Application.fetch_env!(:mta, :feed_message_req_options)

    resp =
      case Req.get(
             Keyword.merge(
               [url: MTA.Constants.URL.mta_realtime_gtfs()],
               req_options
             )
           ) do
        {:ok, resp} ->
          resp

        {:error, reason} ->
          raise FeedMessageError, message: "Request failed: #{inspect(reason)}"
      end

    if resp.status != 200 do
      raise FeedMessageError, message: "Bad response code: HTTP #{resp.status}"
    end

    Protox.decode!(resp.body, TransitRealtime.FeedMessage)
  end
end
