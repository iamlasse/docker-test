# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phx_docker,
  ecto_repos: [PhxDocker.Repo]

# Configures the endpoint
config :phx_docker, PhxDockerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "db/fHisIajNaY5XVlLpTiVIFdrxXl7jpXrA0rFAVXNfrSXf5DRk+SEaXm62UFnnj",
  render_errors: [view: PhxDockerWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhxDocker.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
