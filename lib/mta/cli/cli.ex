defmodule Mta.CLI do
  @moduledoc """
  Parse and format MTA GTFS and GTFS Realtime data
  """

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
        __MODULE__.IO.break()
        __MODULE__.IO.display("1) Get message")
        __MODULE__.IO.display("2) Get latest and save")
        __MODULE__.IO.display("3) Clear cache")
        __MODULE__.IO.display("x) Exit")

        input = __MODULE__.IO.prompt(nil)
        handle_menu(input)

        loop_rec(:menu)
    end
  end

  @spec start(String.t()) :: :ok
  defp start(msg) do
    __MODULE__.IO.display(msg)
  end

  @spec handle_menu(String.t()) :: :ok
  defp handle_menu(input) do
    case input do
      "1" ->
        get_latest(false)

      "2" ->
        get_latest(true)

      "3" ->
        clear_cache()
        __MODULE__.IO.display("Cache cleared.")

      "x" ->
        exit(:shutdown)

      invalid ->
        __MODULE__.IO.display("Invalid input: #{ellipses(invalid, 30)}")

        loop_rec(:menu)
    end
  end

  @spec get_latest(Boolean.t()) :: :ok
  def get_latest(write_files) do
    Mta.Cache.init()

    feed_message = Mta.Cache.feed_message()

    if write_files do
      Mta.IO.File.write_feed_message_json(feed_message)

      Mta.IO.File.write_file(
        inspect(feed_message, limit: :infinity, pretty: true),
        "inspect__feed_message.ex"
      )

      Mta.IO.File.write_file(
        inspect(Mta.Cache.stops(), limit: :infinity, pretty: true),
        "inspect__stops.ex"
      )
    end

    print_messages(feed_message)

    :ok
  end

  @spec clear_cache() :: :ok
  def clear_cache() do
    Mta.Cache.init()
    Mta.Cache.clear()
  end

  @spec print_messages(TransitRealtime.FeedMessage.t()) :: :ok
  def print_messages(%TransitRealtime.FeedMessage{} = feed_message) do
    feed_message.entity
    |> Enum.filter(
      &(Mta.Parser.FeedMessage.is_feed_entity?(&1) and
          Mta.Parser.FeedEntity.has_vehicle?(&1))
    )
    |> tap(&IO.puts("Subway Count: #{length(&1)}"))
  end

  @spec ellipses(String.t(), number()) :: String.t()
  def ellipses(input, max_length) do
    if String.length(input) > max_length do
      Enum.take(input, max_length) <> "..."
    else
      input
    end
  end
end
