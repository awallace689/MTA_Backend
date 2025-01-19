defmodule Mta.Utils.File do
  @moduledoc """
  Utility functions for reading and writing project data
  """
  @spec write_struct_to_json(struct(), String.t()) :: :ok
  def write_struct_to_json(%{} = struct, filename) do
    json_iodata = Protox.json_encode!(struct)
    write_file(json_iodata, filename)
  end

  @spec write_file(iodata(), String.t()) :: :ok
  def write_file(data, filename) do
    File.write!("./out/#{filename}", data, [:write])
  end

  @spec write_feed_message_json(%TransitRealtime.FeedMessage{}) :: :ok
  def write_feed_message_json(%TransitRealtime.FeedMessage{} = message) do
    write_struct_to_json(message, "FeedMessage.json")
  end
end
