defmodule LiveViewTodsWeb.PageController do
  use LiveViewTodsWeb, :controller

  def about(conn, _params) do
    render(conn, :about)
  end
  def contact(conn, _params) do
    render(conn, :contact)
  end

  def patreon(conn, _params) do
    render(conn, :patreon)
  end

  def social(conn, _params) do
    render(conn, :social)
  end
end
