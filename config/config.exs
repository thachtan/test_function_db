# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :test_function_db,
  ecto_repos: [TestFunctionDb.Repo]

# Configures the endpoint
config :test_function_db, TestFunctionDbWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "g6b+KXYCYyxWkTmpONu1cr662+1enrHqRBNQcIlUXlDK/+wE98wkchb9cgdTlLSs",
  render_errors: [view: TestFunctionDbWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: TestFunctionDb.PubSub,
  live_view: [signing_salt: "5t+nN9dv"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
