defmodule Notsense.Mixfile do
  use Mix.Project

  def project do
    [app: :notsense,
     version: "0.9.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,

     elixirc_paths: elixirc_paths(Mix.env),
     deps: deps(),
     name: "Notsense",
     source_url: "https://github.com/tehsnappy/notsense",
     compilers: [:phoenix] ++ Mix.compilers,
     description: description(),
     package: package()]
  end

  # Configuration for the OTP application
  def application do
    [applications: [:logger, :decimal, :phoenix]]
  end

  defp deps do
    [
      {:phoenix, "~> 1.2.0", only: :dev},
      {:calliope, "~> 0.3.0" },
      {:phoenix_html, "~> 2.5", only: :dev}
    ]
  end

defp elixirc_paths(:test), do: ["web"]

  defp elixirc_paths(_),     do: ["web"]

  defp description do
    "dummy placeholders for adsense."
  end

  defp package do
    [contributors: ["Steven Fuchs"],
     links: %{"Github" => "https://github.com/tehsnappy/notsense"}]
  end
end
