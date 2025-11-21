defmodule Mta.Io.Stops do
  @callback read_stops() :: %{String.t() => %Mta.Models.Stop{}}
  @callback read_stops_cached() :: %{String.t() => %Mta.Models.Stop{}}
  @callback read_stops_cached(number() | :no_timeout) :: %{String.t() => %Mta.Models.Stop{}}
end
