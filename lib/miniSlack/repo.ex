defmodule MiniSlack.Repo do
  use Ecto.Repo,
    otp_app: :miniSlack,
    adapter: Ecto.Adapters.Postgres
end
