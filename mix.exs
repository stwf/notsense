defmodule Notsense.Mixfile do
  use Mix.Project

  def project do
    [app: false,
     version: "0.1.1",
     elixir: "~> 1.0",
     deps: deps,
     name: "Notsense",
     source_url: "https://github.com/tehsnappy/notsense",
     test_coverage: [tool: Coverex.Task, coveralls: true],
     description: description,
     package: package]
  end

  # Configuration for the OTP application
  def application do
    [applications: [:logger, :decimal]]
  end

  defp deps do
    []
  end

  defp description do
    "Pure elixir database driver for MariaDB / MySQL."
  end

  defp package do
    [contributors: ["Steven Fuchs"],
     links: %{"Github" => "https://github.com/tehsnappy/notsense"}]
  end
end
