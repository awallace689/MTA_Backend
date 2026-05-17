defmodule MTA.Parser.FeedEntity do
  @spec deleted?(MTA.Models.FeedEntity.t()) :: boolean()
  def deleted?(%MTA.Models.FeedEntity{} = feed_entity),
    do: feed_entity.is_deleted == true

  @spec has_vehicle?(MTA.Models.FeedEntity.t()) :: boolean()
  def has_vehicle?(%MTA.Models.FeedEntity{} = feed_entity), do: feed_entity.vehicle != nil
end
