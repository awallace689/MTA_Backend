defmodule Mta.Models.Stop do
  @moduledoc """
  Stop struct, schema and data defined by MTA GTFS
  """

  defstruct [:stop_id, :stop_name, :stop_lat, :stop_lon, :location_type, :parent_station]
end
