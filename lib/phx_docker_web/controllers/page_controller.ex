defmodule PhxDockerWeb.PageController do
  use PhxDockerWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
