defmodule LiveViewTodsWeb.TodoLive do
  use LiveViewTodsWeb, :live_view
alias LiveViewTods.Todos
  def mount(_params, _session, socket) do
  {:ok, fetch(socket)}
end

def handle_event("add", %{"todo" => todo}, socket) do
  Todos.create_todo(todo)

  {:noreply, fetch(socket)}
end

defp fetch(socket) do
  assign(socket, todos: Todos.list_todos())
end
end