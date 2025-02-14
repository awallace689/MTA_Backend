defmodule Mta.CLI.IO do
  @spec ellipses(String.t(), number()) :: String.t()
  def ellipses(input, max_length) do
    if String.length(input) > max_length do
      Enum.take(input, max_length) <> "..."
    else
      input
    end
  end

  @spec display(String.t()) :: :ok
  def display(msg) do
    if String.ends_with?(msg, "\n") do
      msg |> String.trim_trailing() |> IO.puts()
    else
      IO.puts(msg)
    end
  end

  @spec prompt(String.t() | nil, Boolean.t()) :: String.t()
  def prompt(msg, downcase \\ true) do
    downcase? = &if(downcase, do: String.downcase(&1), else: &1)

    if msg do
      msg = if String.last(msg) == "\n", do: msg, else: msg <> "\n"
      IO.puts(msg)
    end

    IO.gets("> ") |> String.trim() |> downcase?.()
  end

  @spec break() :: :ok
  def break() do
    IO.puts("")
  end
end
