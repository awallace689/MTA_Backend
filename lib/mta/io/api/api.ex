defmodule MTA.IO.API do
  @callback get_feed_message() :: MTA.Models.FeedMessage.t()

  @spec get_feed_message() :: MTA.Models.FeedMessage.t()
  def get_feed_message() do
    impl().get_feed_message()
  end

  defp impl() do
    Application.get_env(:mta, :api_client, MTA.IO.API.HTTP)
  end
end
