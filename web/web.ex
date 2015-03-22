defmodule PhoenixJsonApi.Web do
  @moduledoc """
  A module that keeps using definitions for controllers,
  views and so on.

  This can be used in your application as:

      use PhoenixJsonApi.Web, :controller
      use PhoenixJsonApi.Web, :view

  Keep the definitions in this module short and clean,
  mostly focused on imports, uses and aliases.
  """

  def view do
    quote do
      use Phoenix.View, root: "web/templates"

      # Import URL helpers from the router
      import PhoenixJsonApi.Router.Helpers

      # Import all HTML functions (forms, tags, etc)
      use Phoenix.HTML
    end
  end

  def controller do
    quote do
      use Phoenix.Controller

      # Alias the data repository as a convenience
      alias PhoenixJsonApi.Repo

      # Import URL helpers from the router
      import PhoenixJsonApi.Router.Helpers
    end
  end

  def model do
    quote do
      use Ecto.Model
    end
  end

  @doc """
  When used, dispatch to the appropriate controller/view/etc.
  """
  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end
end
