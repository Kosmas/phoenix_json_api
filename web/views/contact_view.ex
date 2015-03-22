defmodule PhoenixJsonApi.ContactView do
  use PhoenixJsonApi.Web, :view

  def render("index.json", %{contacts: contacts}) do
    contacts
  end
end
