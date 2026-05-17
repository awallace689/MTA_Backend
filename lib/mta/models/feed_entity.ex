defmodule MTA.Models.FeedEntity do
  @type t :: %__MODULE__{
          id: String.t() | nil,
          is_deleted: boolean() | nil,
          trip_update: %TransitRealtime.TripUpdate{} | nil,
          vehicle: %TransitRealtime.VehiclePosition{} | nil,
          alert: %TransitRealtime.Alert{} | nil,
          shape: %TransitRealtime.Shape{} | nil,
          stop: %TransitRealtime.Stop{} | nil,
          trip_modifications: %TransitRealtime.TripModifications{} | nil,
          __uf__: list()
        }

  defstruct id: nil,
            is_deleted: nil,
            trip_update: nil,
            vehicle: nil,
            alert: nil,
            shape: nil,
            stop: nil,
            trip_modifications: nil,
            __uf__: []
end
