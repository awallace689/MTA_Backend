defmodule Mta.Io.Stops do
  @callback read_stops_cached() :: %{String.t() => %Mta.Models.Stop{}}
  @callback read_stops_cached(number() | :no_timeout) :: %{String.t() => %Mta.Models.Stop{}}

  def read_stops_cached() do
    impl().read_stops_cached()
  end

  def read_stops_cached(timeout_seconds) do
    impl().read_stops_cached(timeout_seconds)
  end

  defp impl() do
    Application.get_env(:mta, :stops_client, Mta.Io.Stops.File)
  end
end
