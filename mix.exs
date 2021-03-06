defmodule DockerApi.Mixfile do
  use Mix.Project

  def project do
    [app: :docker_api,
      version: "0.3.0",
      elixir: "~> 1.0",
      description: description,
      package: package,
      deps: deps]
  end

  def application do
    [applications: [:logger, :httpoison]]
  end

  def description do
    "Docker API for Elixir" 
  end

  def package do
    [
      contributors: ["Bradley Smith"],
      licenses: ["The MIT License"],
      links: %{
        "GitHub" => "https://github.com/bradleyd/docker_api"
      }
    ]
  end

  defp deps do
    [
      {:ibrowse, github: "cmullaparthi/ibrowse", tag: "v4.1.1"},
      {:httpoison, "~> 0.6"},
      {:mock, "~> 0.1", only: :test},
      {:poison, "~> 1.3"}
    ]
  end
end
