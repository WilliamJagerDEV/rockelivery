defmodule RockeliveryWeb.UsersControllerTest do
  use RockeliveryWeb.ConnCase, async: true
  import Rockelivery.Factory

  describe "create/2" do
    test "when all aprams are valid, creates the user", %{conn: conn} do
      params = %{
        "address" => "Rua Guanabara, n56",
        "age" => 37,
        "cep" => "29164815",
        "cpf" => "11839027789",
        "email" => "williamjager.dev@gmail.com",
        "password" => "123456",
        "name" => "William"
      }

      response =
        conn
        |> post(Routes.users_path(conn, :create, params))
        |> json_response(:created)

      assert %{
               "message" => "User created!",
               "user" => %{
                 "address" => "Rua Guanabara, n56",
                 "age" => 37,
                 "cpf" => "11839027789",
                 "email" => "williamjager.dev@gmail.com",
                 "id" => _id
               }
             } = response
    end

    test "there are some error, returns the error", %{conn: conn} do
      params = %{
        "password" => "123456",
        "name" => "William"
      }

      response =
        conn
        |> post(Routes.users_path(conn, :create, params))
        |> json_response(:bad_request)

      expected_response = %{
        "message" => %{
          "address" => ["can't be blank"],
          "age" => ["can't be blank"],
          "cep" => ["can't be blank"],
          "cpf" => ["can't be blank"],
          "email" => ["can't be blank"]
        }
      }

      assert expected_response == response
    end
  end

  describe "delete/2" do
    test "when there is a user with the given id, deletes the user", %{conn: conn} do
      id = "a221e3d6-6c77-4757-93f6-188b4de9c91f"
      insert(:user)

      response =
        conn
        |> delete(Routes.users_path(conn, :delete, id))
        |> response(:no_content)

      assert response == ""
    end
  end
end
