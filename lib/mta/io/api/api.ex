defmodule Mta.Io.Api do
  @callback get_feed_message_cached() :: %TransitRealtime.FeedMessage{}
  @callback get_feed_message_cached(number()) :: %TransitRealtime.FeedMessage{}

  @doc """
  FeedMessage containing MTA realtime data payload
  """
  def get_feed_message_cached() do
    impl().get_feed_message_cached()
  end

  def get_feed_message_cached(timeout_seconds) do
    impl().get_feed_message_cached(timeout_seconds)
  end

  defp impl() do
    Application.get_env(:mta, :api_client, Mta.Io.Api.Http)
  end
end
