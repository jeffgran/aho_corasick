defmodule AhoCorasick.Mixfile do
  use Mix.Project

  def project do
    [app: :aho_corasick,
     version: "0.0.1",
     elixir: "~> 1.0",
     description: "Aho-Corasick algorithm, implemented in Elixir using Erlang's :digraph for the graph structure",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     package: package(),
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  def package do
    [ name: :aho_corasick,
      files: ["lib", "mix.exs"],
      maintainers: ["Jeff Gran"],
      licenses: ["MIT"],
      links: %{"Github" => "https://github.com/jeffgran/aho_corasick.ex"}
    ]
  end
end
