defmodule Mta.Io.Api do
  @callback get_feed_message() :: %TransitRealtime.FeedMessage{}
end
