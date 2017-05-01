defmodule ExpostgresHelpers.Mixfile do
  use Mix.Project

  def project do
    [app: :expostgres_helpers,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    [
      {:ecto, "~> 2.1.3"},
      {:postgrex, "~> 0.13.0"}
    ]
  end
end
