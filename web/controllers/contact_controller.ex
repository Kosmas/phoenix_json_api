defmodule PhoenixJsonApi.ContactController do
  use PhoenixJsonApi.Web, :controller
  alias PhoenixJsonApi.Repo
  alias PhoenixJsonApi.Contact

  plug :action

  def index(conn, _params) do
    contacts = Repo.all(Contact)
    render conn, contacts: contacts
  end
end
