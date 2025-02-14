defmodule Mix.Tasks.Cli do
  use Mix.Task

  def run(_) do
    Mix.Task.run("app.start")

    Mta.CLI.loop()
  end
end
