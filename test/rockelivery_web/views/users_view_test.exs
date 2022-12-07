defmodule RockeliveryWeb.UsersViewTest do
  use RockeliveryWeb.ConnCase, async: true
  import Phoenix.View
  import Rockelivery.Factory
  alias RockeliveryWeb.UsersView

  test "renders create.json" do
    user = build(:user)
    response = render(UsersView, "create.json", user: user)

    assert %{
             message: "User created!",
             user: %Rockelivery.User{
               id: "a221e3d6-6c77-4757-93f6-188b4de9c91f",
               address: "Rua Guanabara, n56",
               age: 37,
               cep: "29164815",
               cpf: "11839027799",
               email: "williansud@gmail.com",
               password: "123456",
               password_hash: nil,
               name: "William",
               inserted_at: nil,
               updated_at: nil
             }
           } = response
  end
end
