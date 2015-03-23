defmodule PhoenixJsonApi.ContactControllerTest do
  use PhoenixJsonApi.Case, async: false

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
end
