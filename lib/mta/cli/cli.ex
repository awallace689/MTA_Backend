defmodule Mta.CLI do
  @moduledoc """
  Parse and format MTA GTFS and GTFS Realtime data
  """

  @type state ::
          :start
          | :menu

  defp api_client(), do: Application.get_env(:mta, :api_client, Mta.Io.Api.Http)

  defp persistence_client(),
    do: Application.get_env(:mta, :persistence_client, Mta.Io.Persistence.File)

  defp stops_client(), do: Application.get_env(:mta, :stops_client, Mta.Io.Stops.File)

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
        __MODULE__.Io.break()
        __MODULE__.Io.display("1) Get message")
        __MODULE__.Io.display("2) Get latest and save")
        __MODULE__.Io.display("x) Exit")

        input = __MODULE__.Io.prompt(nil)
        handle_menu(input)

        loop_rec(:menu)
    end
  end

  @spec start(String.t()) :: :ok
  defp start(msg) do
    __MODULE__.Io.display(msg)
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
        __MODULE__.Io.display("Invalid input: #{ellipses(invalid, 30)}")

        loop_rec(:menu)
    end
  end

  @spec get_latest(boolean()) :: :ok
  def get_latest(write_files) do
    Mta.Cache.init()

    feed_message = api_client().get_feed_message_cached()

    if write_files do
      persistence_client().write_feed_message_json(feed_message)

      persistence_client().write_file(
        inspect(feed_message, limit: :infinity, pretty: true),
        "inspect__feed_message.ex"
      )

      persistence_client().write_file(
        inspect(stops_client().read_stops_cached(), limit: :infinity, pretty: true),
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
