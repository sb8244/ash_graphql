defmodule AshGraphql.MixProject do
  use Mix.Project

  def project do
    [
      app: :ash_graphql,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:absinthe, "~> 1.5.0-rc.5"},
      {:ash, path: "../ash"}
    ]
  end
end
