defmodule Notsense.Mixfile do
  use Mix.Project

  def project do
    [app: :notsense,
     version: "0.2.2",
     elixir: "~> 1.3",
     elixirc_paths: elixirc_paths(Mix.env),
     deps: deps,
     name: "Notsense",
     source_url: "https://github.com/tehsnappy/notsense",
     compilers: [:phoenix] ++ Mix.compilers,
     description: description,
     package: package]
  end

  # Configuration for the OTP application
  def application do
    [applications: [:logger, :decimal, :phoenix]]
  end

  defp deps do
    [
      {:phoenix, "~> 1.2.0-rc", only: :dev},
      {:phoenix_html, "~> 2.5", only: :dev}
    ]
  end
  defp elixirc_paths(:test), do: ["lib", "web", "test/support"]

  defp elixirc_paths(_),     do: ["lib", "web"]

  defp description do
    "Pure elixir database driver for MariaDB / MySQL."
  end

  defp package do
    [contributors: ["Steven Fuchs"],
     links: %{"Github" => "https://github.com/tehsnappy/notsense"}]
  end
end
