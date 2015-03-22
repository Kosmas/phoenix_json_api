use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :phoenix_json_api, PhoenixJsonApi.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :phoenix_json_api, PhoenixJsonApi.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "phoenix_json_api_test",
  size: 1,
  max_overflow: false
