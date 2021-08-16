defmodule LiveViewTods.Repo do
  use Ecto.Repo,
    otp_app: :live_view_tods,
    adapter: Ecto.Adapters.Postgres
end
