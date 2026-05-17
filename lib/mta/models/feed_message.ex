defmodule MTA.Models.FeedMessage do
  @type t :: %__MODULE__{
          header: %TransitRealtime.FeedHeader{} | nil,
          entity: [MTA.Models.FeedEntity.t()],
          __uf__: list()
        }

  defstruct header: nil, entity: [], __uf__: []
end
