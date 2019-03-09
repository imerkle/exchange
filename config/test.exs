use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :binbase_backend, BinbaseBackendWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :binbase_backend, BinbaseBackend.Repo,
  username: "postgres",
  password: "",
  database: "binbase_backend_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

config :argon2_elixir, t_cost: 2, m_cost: 8

#if !System.get_env("TRAVIS") do
#  import_config "test.secret.exs"
#end
