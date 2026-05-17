defmodule Mix.Tasks.CLI do
  use Mix.Task

  def run(_) do
    Mix.Task.run("app.start")

    MTA.CLI.loop()
  end
end
