defmodule Mta.Parser.FeedEntity do
  @spec is_deleted?(%TransitRealtime.FeedEntity{}) :: boolean()
  def is_deleted?(%TransitRealtime.FeedEntity{} = feed_entity),
    do: feed_entity.is_deleted == true

  @spec has_vehicle?(%TransitRealtime.FeedEntity{}) :: boolean()
  def has_vehicle?(%TransitRealtime.FeedEntity{} = feed_entity), do: feed_entity.vehicle != nil
end
