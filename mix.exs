defmodule KafkaExTest.Mixfile do
  use Mix.Project

  def project do
    [app: :kafka_ex_test,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger, :kafka_ex]]
  end

  defp deps do
    [{:kafka_ex, "~> 0.6.5"},]
  end
end