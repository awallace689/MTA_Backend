defmodule Mta.CLI do
  @moduledoc """
  Parse and format MTA GTFS and GTFS Realtime data
  """

  @type state ::
          :start
          | :menu

  @spec print_messages(TransitRealtime.FeedMessage.t()) :: :ok
  def print_messages(%TransitRealtime.FeedMessage{} = feed_message) do
    feed_message.entity
    |> Enum.filter(
      &(Mta.Parser.FeedMessage.is_feed_entity?(&1) and
          Mta.Parser.FeedEntity.has_vehicle?(&1))
    )
    |> tap(&IO.puts("Subway Count: #{length(&1)}"))
  end

  @spec get_latest(Boolean.t()) :: :ok
  def get_latest(write_files) do
    Mta.Data.Cached.init()

    {:ok, resp} =
      Req.get(Mta.Constants.URL.mta_realtime_gtfs())

    feed_message = Protox.decode!(resp.body, TransitRealtime.FeedMessage)

    if write_files do
      Mta.Utils.File.write_feed_message_json(feed_message)

      Mta.Utils.File.write_file(
        inspect(feed_message, limit: :infinity, pretty: true),
        "inspect__feed_message.ex"
      )

      Mta.Utils.File.write_file(
        inspect(Mta.Data.Cached.stops(), limit: :infinity, pretty: true),
        "inspect__stops.ex"
      )
    end

    print_messages(feed_message)

    :ok
  end

  def loop() do
    :ok = loop_rec(:start)
  end

  @spec loop_rec(state()) :: :ok
  defp loop_rec(state) do
    case state do
      :start ->
        start(Mta.Constants.Text.prompt_start())

        loop_rec(:menu)

      :menu ->
        break()
        display("1) Get latest")
        display("2) Get latest and save")
        display("x) Exit")

        input = prompt(nil)
        handle_menu(input)

        loop_rec(:menu)
    end
  end

  @spec handle_menu(String.t()) :: :ok
  defp handle_menu(input) do
    case input do
      "1" ->
        get_latest(false)

      "2" ->
        get_latest(true)

      "x" ->
        exit(:shutdown)

      invalid ->
        display("Invalid input: #{ellipses(invalid, 30)}")

        loop_rec(:menu)
    end
  end

  @spec ellipses(String.t(), number()) :: String.t()
  defp ellipses(input, max_length) do
    if String.length(input) > max_length do
      Enum.take(input, max_length) <> "..."
    else
      input
    end
  end

  @spec start(String.t()) :: :ok
  defp start(msg) do
    display(msg)
  end

  @spec display(String.t()) :: :ok
  defp display(msg) do
    if String.ends_with?(msg, "\n") do
      msg |> String.trim_trailing() |> IO.puts()
    else
      IO.puts(msg)
    end
  end

  @spec prompt(String.t() | nil, Boolean.t()) :: String.t()
  defp prompt(msg, downcase \\ true) do
    downcase? = &if(downcase, do: String.downcase(&1), else: &1)

    if msg do
      msg = if String.last(msg) == "\n", do: msg, else: msg <> "\n"
      IO.puts(msg)
    end

    IO.gets("> ") |> String.trim() |> downcase?.()
  end

  @spec break() :: :ok
  defp break() do
    IO.puts("")
  end
end
