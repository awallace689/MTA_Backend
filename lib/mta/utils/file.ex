defmodule Mta.Utils.File do
  @moduledoc """
  Utility functions for reading and writing project data
  """

  @spec write_file(iodata(), String.t()) :: :ok
  def write_file(data, filename, print_log \\ true) do
    unless File.dir?("./out") do
      File.mkdir("./out")
    end

    path = "./out/#{filename}"
    File.write!(path, data, [:write])

    if print_log, do: IO.puts("Wrote to file at path: #{path}")
  end

  @spec write_struct_to_json(struct(), String.t()) :: :ok
  def write_struct_to_json(%{} = struct, filename) do
    json_iodata = Protox.json_encode!(struct)
    write_file(json_iodata, filename)
  end

  @spec write_feed_message_json(%TransitRealtime.FeedMessage{}) :: :ok
  def write_feed_message_json(%TransitRealtime.FeedMessage{} = message) do
    write_struct_to_json(message, "FeedMessage.json")
  end

  def read_inspect_file(filename) do
    {:ok, contents} = File.read("./out/#{filename}")

    contents
  end
end
