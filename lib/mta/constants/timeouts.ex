defmodule Mta.Constants.Timeouts do
  @doc """
  Default timeout for MTA message call, in seconds
  """
  @spec feed_message() :: number()
  def feed_message(), do: 20

  @spec stops() :: :no_timeout
  def stops(), do: :no_timeout
end
