# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :live_view_tods,
  ecto_repos: [LiveViewTods.Repo]

# Configures the endpoint
config :live_view_tods, LiveViewTodsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "SzWEcuAjx+i0FSLQsQdmhJsuzBYIu6YP14chj108d7wf/MTScysnmsDdnuba+Bf2",
  render_errors: [view: LiveViewTodsWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: LiveViewTods.PubSub,
  live_view: [signing_salt: "5L0D+oBL"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
