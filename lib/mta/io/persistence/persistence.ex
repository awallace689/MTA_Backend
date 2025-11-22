defmodule Mta.Io.Persistence do
  @moduledoc """
  Utility functions for reading and writing project data
  """
  @callback write_file(iodata(), String.t()) :: :ok
  @callback write_file(iodata(), String.t(), boolean()) :: :ok
  @callback write_struct_to_json(struct(), String.t()) :: :ok
  @callback write_feed_message_json(%TransitRealtime.FeedMessage{}) :: :ok
  @callback read_inspect_file(String.t()) :: binary()

  def write_file(data, filename) do
    impl().write_file(data, filename)
  end

  def write_file(data, filename, print_log) do
    impl().write_file(data, filename, print_log)
  end

  def write_struct_to_json(%{} = struct, filename) do
    impl().write_struct_to_json(struct, filename)
  end

  def write_feed_message_json(%TransitRealtime.FeedMessage{} = message) do
    impl().write_feed_message_json(message)
  end

  def read_inspect_file(filename) do
    impl().read_inspect_file(filename)
  end

  defp impl() do
    Application.get_env(:mta, :persistence_client, Mta.Io.Persistence.File)
  end
end
