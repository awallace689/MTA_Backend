defmodule Mta.CLI do
  @moduledoc """
  Parse and format MTA GTFS and GTFS Realtime data
  """

  alias Mta.CLI.Io

  @type state ::
          :start
          | :menu

  def loop() do
    loop_rec(:start)
  end

  @spec loop_rec(state()) :: :ok
  defp loop_rec(state) do
    case state do
      :start ->
        start(Mta.Constants.Text.prompt_start())

        loop_rec(:menu)

      :menu ->
        Io.break()
        Io.display("1) Get message")
        Io.display("2) Get latest and save")
        Io.display("x) Exit")

        input = Io.prompt(nil)
        handle_menu(input)

        loop_rec(:menu)
    end
  end

  @spec start(String.t()) :: :ok
  defp start(msg) do
    Io.display(msg)
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
        Io.display("Invalid input: #{ellipses(invalid, 30)}")

        loop_rec(:menu)
    end
  end

  @spec get_latest(boolean()) :: :ok
  def get_latest(write_files) do
    Mta.Cache.init()

    feed_message = Mta.Io.Api.get_feed_message_cached()

    if write_files do
      Mta.Io.Persistence.write_feed_message_json(feed_message)

      Mta.Io.Persistence.write_file(
        inspect(feed_message, limit: :infinity, pretty: true),
        "inspect__feed_message.ex"
      )

      Mta.Io.Persistence.write_file(
        inspect(Mta.Io.Stops.read_stops_cached(), limit: :infinity, pretty: true),
        "inspect__stops.ex"
      )
    end

    print_messages(feed_message)

    :ok
  end

  @spec print_messages(%TransitRealtime.FeedMessage{}) :: :ok
  def print_messages(feed_message) do
    feed_message.entity
    |> Enum.filter(
      &(Mta.Parser.FeedMessage.is_feed_entity?(&1) and
          Mta.Parser.FeedEntity.has_vehicle?(&1))
    )
    |> tap(&IO.puts("Subway Count: #{length(&1)}"))

    :ok
  end

  @spec ellipses(String.t(), number()) :: String.t()
  def ellipses(input, max_length) do
    if String.length(input) > max_length do
      input
      |> String.graphemes()
      |> Enum.take(max_length)
      |> Enum.join("")
      |> (&(&1 <> "...")).()
    else
      input
    end
  end
end
