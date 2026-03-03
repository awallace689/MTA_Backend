defmodule Mta.Io.Stops do
  @callback read_stops() :: %{String.t() => %Mta.Models.Stop{}}

  @spec read_stops() :: %{String.t() => %Mta.Models.Stop{}}
  def read_stops() do
    impl().read_stops()
  end

  defp impl() do
    Application.get_env(:mta, :stops_client, Mta.Io.Stops.File)
  end
end
