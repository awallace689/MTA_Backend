defmodule Mta.Parser.FeedMessage do
  @spec is_feed_entity?(term()) :: boolean()
  def is_feed_entity?(%TransitRealtime.FeedEntity{} = _), do: true

  def is_feed_entity?(_), do: false
end
