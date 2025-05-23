defmodule Mta.CLI.Io do
  @spec display(String.t()) :: :ok
  def display(msg) do
    if String.ends_with?(msg, "\n") do
      msg |> String.trim_trailing() |> IO.puts()
    else
      IO.puts(msg)
    end
  end

  @spec prompt(String.t() | nil, boolean()) :: String.t()
  def prompt(msg, downcase \\ true) do
    apply_downcase = &if(downcase, do: String.downcase(&1), else: &1)

    if msg do
      msg = if String.last(msg) == "\n", do: msg, else: msg <> "\n"
      IO.puts(msg)
    end

    IO.gets("> ") |> String.trim() |> apply_downcase.()
  end

  @spec break() :: :ok
  def break() do
    IO.puts("")
  end
end
