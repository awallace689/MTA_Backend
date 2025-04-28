alias Mta.Io.Api

defmodule Mta.Io.Api.Cached do
  @behaviour Mta.Io.Api

  @feed_message_key :mta_io_api__get_feed_message_key

  @spec get_feed_message(number()) :: %TransitRealtime.FeedMessage{}
  @doc """
  FeedMessage containing MTA realtime data payload
  """
  def get_feed_message(timeout_seconds \\ 20) do
    Mta.Cache.get_set_expired(@feed_message_key, timeout_seconds, &Api.Http.get_feed_message/0)
  end
end
