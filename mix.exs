defmodule Mta.MixProject do
  use Mix.Project

  def project do
    [
      app: :mta,
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :elixir_uuid]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  def deps do
    [
      {:protox, "~> 1.7"},
      {:req, "~> 0.5.8"},
      {:nimble_csv, "~> 1.2"},
      {:jason, "~> 1.4"},
      {:elixir_uuid, "~> 1.2"},
      {:dialyxir, "~> 1.4", only: [:dev, :test], runtime: false}
    ]
  end
end
