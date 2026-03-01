defmodule Mta.Constants.Timeouts do
  @doc """
  Default timeout for MTA message call, in seconds
  """
  def feed_message(), do: 20
end
