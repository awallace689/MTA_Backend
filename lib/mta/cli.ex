defmodule Mta.CLI do
  @type state :: :start

  def loop() do
  end

  @spec loop_rec(state(), String.t()) :: :ok
  defp loop_rec(state, input) do
    case state do
      :start ->
        :ok = start("hi")
        loop_rec(state, input)
    end
  end

  @spec start(String.t()) :: :ok
  defp start(input) do
    prompt("hello world")
  end

  @spec prompt(String.t()) :: String.t()
  def prompt(msg) do
    msg =
      if String.last(msg) == "\n" do
        msg
      else
        msg <> "\n"
      end

    IO.puts(msg)
    IO.gets("> ") |> String.downcase() |> String.trim()
  end
end
