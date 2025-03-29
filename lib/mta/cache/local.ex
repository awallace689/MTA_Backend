alias Mta.Cache

defmodule Mta.Cache.Local do
  @moduledoc """
  Locally-stored mock responses for offline dev
  """

  @local_response_key :local

  @spec feed_message(String.t() | nil) :: %TransitRealtime.FeedMessage{}
  @doc """
  Map of stop ID to stop struct. Data provided by MTA GTFS.
  """
  def feed_message(filename) do
    load = fn ->
      {:ok, contents} = File.read("./out/#{filename}")
      {value, []} = Code.eval_string(contents)

      value
    end

    Cache.get_set_expired(@local_response_key, :no_timeout, load)
  end
end
