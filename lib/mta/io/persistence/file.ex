defmodule MTA.IO.Persistence.File do
  @behaviour MTA.IO.Persistence
  @moduledoc """
  Utility functions for reading and writing project data
  """

  @spec write_file(iodata(), String.t()) :: :ok
  @impl true
  def write_file(data, filename, print_log \\ true) do
    path = out_dir() <> filename

    File.write!(path, data, [:write])

    if print_log, do: IO.puts("Wrote to file at path: #{path}")
  end

  @spec write_struct_to_json(struct(), String.t()) :: :ok
  @impl true
  def write_struct_to_json(%{} = struct, filename) do
    json_iodata = Protox.json_encode!(struct)
    write_file(json_iodata, filename)
  end

  @spec write_feed_message_json(MTA.Models.FeedMessage.t()) :: :ok
  @impl true
  def write_feed_message_json(%MTA.Models.FeedMessage{} = message) do
    tr_message = %TransitRealtime.FeedMessage{
      header: message.header,
      entity: Enum.map(message.entity, &struct(TransitRealtime.FeedEntity, Map.from_struct(&1))),
      __uf__: message.__uf__
    }

    write_struct_to_json(tr_message, "FeedMessage.json")
  end

  @impl true
  def read_inspect_file(filename) do
    {:ok, contents} = File.read(out_dir() <> filename)

    contents
  end

  defp out_dir(), do: Application.get_env(:mta, :out_dir)
end
