defmodule TestFunctionDb.Repo do
  use Ecto.Repo,
    otp_app: :test_function_db,
    adapter: Ecto.Adapters.Postgres
end
