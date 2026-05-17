defmodule MTA.CLI do
  @moduledoc """
  Parse and format MTA GTFS and GTFS Realtime data
  """

  alias MTA.CLI.IO

  @type state ::
          :start
          | :menu

  def loop() do
    loop_rec(:start)
  end

  @spec loop_rec(state()) :: no_return()
  defp loop_rec(state) do
    case state do
      :start ->
        start(MTA.Constants.Text.prompt_start())

        loop_rec(:menu)

      :menu ->
        IO.break()
        IO.display("1) Get message")
        IO.display("2) Get latest and save")
        IO.display("x) Exit")

        input = IO.prompt(nil)
        handle_menu(input)

        loop_rec(:menu)
    end
  end

  @spec start(String.t()) :: :ok
  defp start(msg) do
    IO.display(msg)
  end

  @spec handle_menu(String.t()) :: no_return()
  defp handle_menu(input) do
    case input do
      "1" ->
        get_latest(false)

      "2" ->
        get_latest(true)

      "x" ->
        exit(:shutdown)

      invalid ->
        IO.display("Invalid input: #{ellipses(invalid, 30)}")

        loop_rec(:menu)
    end
  end

  @spec get_latest(boolean()) :: :ok
  def get_latest(write_files) do
    MTA.Cache.init()

    feed_message =
      MTA.Cache.get_set_expired(
        MTA.Constants.CacheKey.feed_message(),
        MTA.Constants.Timeouts.feed_message(),
        &MTA.IO.API.get_feed_message/0
      )

    if write_files do
      write_files(feed_message)
    end

    :ok
  end

  @spec write_files(MTA.Models.FeedMessage.t()) :: :ok
  defp write_files(feed_message) do
    MTA.IO.Persistence.write_feed_message_json(feed_message)

    MTA.IO.Persistence.write_file(
      inspect(feed_message, limit: :infinity, pretty: true),
      "inspect__feed_message.ex"
    )

    stops =
      MTA.Cache.get_set_expired(
        MTA.Constants.CacheKey.stops(),
        MTA.Constants.Timeouts.stops(),
        &MTA.IO.Stops.read_stops/0
      )

    MTA.IO.Persistence.write_file(
      inspect(stops, limit: :infinity, pretty: true),
      "inspect__stops.ex"
    )

    :ok
  end

  @spec get_vehicles(MTA.Models.FeedMessage.t()) :: [MTA.Models.FeedEntity.t()]
  def get_vehicles(feed_message) do
    feed_message.entity
    |> Enum.filter(
      &(MTA.Parser.FeedMessage.feed_entity?(&1) and
          MTA.Parser.FeedEntity.has_vehicle?(&1))
    )
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
