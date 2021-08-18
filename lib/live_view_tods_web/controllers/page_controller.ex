defmodule LiveViewTodsWeb.PageController do
  use LiveViewTodsWeb, :controller

  def about(conn, _params) do
    render(conn, :about)
  end
 end
