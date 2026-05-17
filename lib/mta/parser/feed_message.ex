defmodule MTA.Parser.FeedMessage do
  @spec feed_entity?(term()) :: boolean()
  def feed_entity?(%MTA.Models.FeedEntity{} = _), do: true

  def feed_entity?(_), do: false
end
