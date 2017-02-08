# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :apple_notifier,
  ecto_repos: [AppleNotifier.Repo]

# Configures the endpoint
config :apple_notifier, AppleNotifier.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "YNxgUzpEcbQ1o2Vh0ZwcA9gM42iGcxDaACAar1EESWukmqDBk0kilSl92A5Ig75m",
  render_errors: [view: AppleNotifier.ErrorView, accepts: ~w(html json)],
  pubsub: [name: AppleNotifier.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
