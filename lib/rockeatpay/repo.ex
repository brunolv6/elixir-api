defmodule Rockeatpay.Repo do
  use Ecto.Repo,
    otp_app: :rockeatpay,
    adapter: Ecto.Adapters.Postgres
end
