defmodule DiscussWeb.CommentsChannel do
  use DiscussWeb, :channel

  def join(name, _params, socket) do
    IO.puts("+++++")
    IO.inspect(name)
    {:ok, %{hey: "there"}, socket}
  end

  def handle_in() do
  end
end
