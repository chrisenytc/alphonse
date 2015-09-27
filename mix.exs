defmodule Alphonse.Mixfile do
  use Mix.Project

  @name "Alphonse"

  @description """
    A module wrapper to encrypt and decrypt files with aes-128-cbc
  """

  @version "0.1.0"

  @repo "https://github.com/chrisenytc/alphonse"

  def project do
    [app: :alphonse,
     version: @version,
     elixir: "~> 1.0",
     name: @name,
     description: @description,
     package: package,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps,
     source_url: @repo]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [{:cipher, "~> 0.1.0"}]
  end

  defp package do
    [ :maintainers: ["Christopher EnyTC"],
      licenses: ["MIT"],
      links: %{"Github" => @repo} ]
  end
end
