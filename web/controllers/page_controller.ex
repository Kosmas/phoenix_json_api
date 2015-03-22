defmodule PhoenixJsonApi.PageController do
  use PhoenixJsonApi.Web, :controller

  plug :action

  def index(conn, _params) do
    render conn, "index.html"
  end
end
