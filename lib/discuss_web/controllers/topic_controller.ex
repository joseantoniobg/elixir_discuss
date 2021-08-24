defmodule DiscussWeb.TopicController do
  use DiscussWeb, :controller

  def new(conn, params) do
    IO.puts("++++")
    IO.puts(conn)
    IO.puts("++++")
    IO.puts(params)
  end
end
