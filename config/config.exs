# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :rockeatpay,
  ecto_repos: [Rockeatpay.Repo]

# Configures the endpoint
config :rockeatpay, RockeatpayWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "bniPxyxHvZpCZSwqQcuec7MP26RbSJE2Y7AD7e8GTSqiVM4s5Jj7bbhp37qb6s5m",
  render_errors: [view: RockeatpayWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Rockeatpay.PubSub,
  live_view: [signing_salt: "OHlW39H8"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
