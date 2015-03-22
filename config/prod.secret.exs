use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :phoenix_json_api, PhoenixJsonApi.Endpoint,
  secret_key_base: "h6JZkuM9XhRnDG0iF+z8k98TzY+0H/mEaFigKpte1kFeAb7GJ8263LubkhnQbtaq"

# Configure your database
config :phoenix_json_api, PhoenixJsonApi.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "phoenix_json_api_prod"
