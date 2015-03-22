defmodule PhoenixJsonApi.ContactControllerTest do
  use ExUnit.Case, asyn: false
  use Plug.Test
  alias PhoenixJsonApi.Contact
  alias PhoenixJsonApi.Repo
  alias Ecto.Adapters.SQL

  setup do
    SQL.begin_test_transaction(Repo)

    on_exit fn ->
      SQL.rollback_test_transaction(Repo)
    end
  end

  test "/index returns a list of cntacts" do
    contacts_as_json =
      %Contact{name: "Gumbo", phone: "(123) 011 122 44 11"}
      |> Repo.insert
      |> List.wrap
      |> Poison.encode!

    response = conn(:get, "/api/contacts") |> send_request

    assert response.status == 200
    assert response.resp_body == contacts_as_json
  end

  defp send_request(conn) do
    conn
    |> put_private(:plug_skip_csrf_protection, true)
    |> PhoenixJsonApi.Endpoint.call([])
  end
end
