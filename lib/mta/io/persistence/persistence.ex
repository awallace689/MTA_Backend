defmodule Mta.Io.Persistence do
  @moduledoc """
  Utility functions for reading and writing project data
  """
  @callback write_file(iodata(), String.t()) :: :ok
  @callback write_file(iodata(), String.t(), boolean()) :: :ok
  @callback write_struct_to_json(struct(), String.t()) :: :ok
  @callback write_feed_message_json(%TransitRealtime.FeedMessage{}) :: :ok
  @callback read_inspect_file(String.t()) :: binary()
end
