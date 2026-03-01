defmodule Mta.Io.Api do
  @callback get_feed_message() :: %TransitRealtime.FeedMessage{}

  def get_feed_message() do
    impl().get_feed_message()
  end

  defp impl() do
    Application.get_env(:mta, :api_client, Mta.Io.Api.Http)
  end
end
