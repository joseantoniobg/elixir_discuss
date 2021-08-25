defmodule DiscussWeb.TopicController do
  use DiscussWeb, :controller

  alias DiscussWeb.Topic

  def index(conn, _params) do
    topics = Repo.all(Topic)
    render(conn, "index.html", topics: topics)
  end

  def new(conn, _params) do
    # IO.puts("++++")
    # IO.inspect(conn)
    # IO.puts("++++")
    # IO.inspect(params)
    changeset = Topic.changeset(%Topic{}, %{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"topic" => topic}) do
    changeset = Topic.changeset(%Topic{}, topic)

    case Repo.insert(changeset) do
      {:iok, post} ->
        IO.inspect(post)

      {:error, changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end
end
