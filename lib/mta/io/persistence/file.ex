defmodule Mta.Io.Persistence.File do
  @behaviour Mta.Io.Persistence
  @moduledoc """
  Utility functions for reading and writing project data
  """

  @spec write_file(iodata(), String.t()) :: :ok
  @impl true
  def write_file(data, filename, print_log \\ true) do
    unless File.dir?(out_dir()) do
      File.mkdir(out_dir() <> filename)
    end

    path =
      (out_dir() <> filename)
      |> tap(&IO.puts("path:" <> &1))

    File.write!(path, data, [:write])

    if print_log, do: IO.puts("Wrote to file at path: #{path}")
  end

  @spec write_struct_to_json(struct(), String.t()) :: :ok
  @impl true
  def write_struct_to_json(%{} = struct, filename) do
    json_iodata = Protox.json_encode!(struct)
    write_file(json_iodata, filename)
  end

  @spec write_feed_message_json(%TransitRealtime.FeedMessage{}) :: :ok
  @impl true
  def write_feed_message_json(%TransitRealtime.FeedMessage{} = message) do
    write_struct_to_json(message, "FeedMessage.json")
  end

  @impl true
  def read_inspect_file(filename) do
    {:ok, contents} = File.read(out_dir() <> filename)

    contents
  end

  defp out_dir(), do: Application.get_env(:mta, :out_dir)
end
