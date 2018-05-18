# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :discuss,
  ecto_repos: [Discuss.Repo]

# Configures the endpoint
config :discuss, Discuss.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "NJJC6q+SYlQDyKx7kNTxPRWNvhEoYPXx6R4gVIiV0MS51lknZcPqWqwI8Ad8+QXd",
  render_errors: [view: Discuss.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Discuss.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]


config :ueberauth, Ueberauth,
 providers: [
   github: { Ueberauth.Strategy.Github, [ opt1: "value", opts2: "value" ] }
 ]

 config :ueberauth, Ueberauth.Strategy.Github.OAuth,
 client_id: "6c06a6f0b89181a92734",
 client_secret: "04d31e37d620e099393e57ab3e65ac28bb67d703"
# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
