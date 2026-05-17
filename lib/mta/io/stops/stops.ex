defmodule MTA.IO.Stops do
  @callback read_stops() :: %{String.t() => %MTA.Models.Stop{}}

  @spec read_stops() :: %{String.t() => %MTA.Models.Stop{}}
  def read_stops() do
    impl().read_stops()
  end

  defp impl() do
    Application.get_env(:mta, :stops_client, MTA.IO.Stops.File)
  end
end
