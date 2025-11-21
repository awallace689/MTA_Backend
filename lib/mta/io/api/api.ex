defmodule Mta.Io.Api do
  @callback get_feed_message_cached() :: %TransitRealtime.FeedMessage{}
  @callback get_feed_message_cached(number()) :: %TransitRealtime.FeedMessage{}
end
