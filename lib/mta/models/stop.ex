defmodule MTA.Models.Stop do
  @moduledoc """
  Stop struct, schema and data defined by MTA GTFS
  """

  @type t() :: %__MODULE__{
          stop_id: String.t(),
          stop_name: String.t(),
          stop_lat: String.t(),
          stop_lon: String.t(),
          location_type: String.t(),
          parent_station: String.t()
        }

  defstruct [:stop_id, :stop_name, :stop_lat, :stop_lon, :location_type, :parent_station]
end
