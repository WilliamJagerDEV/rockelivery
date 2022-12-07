defmodule Rockelivery.Factory do
  use ExMachina.Ecto, repo: Rockelivery.Repo

  alias Rockelivery.User

  def user_params_factory do
    %{
      address: "Rua Guanabara, n56",
      age: 37,
      cep: "29164815",
      cpf: "11839027789",
      email: "williamjager.dev@gmail.com",
      password: "123456",
      name: "William"
    }
  end

  def user_factory do
    %User{
      address: "Rua Guanabara, n56",
      age: 37,
      cep: "29164815",
      cpf: "11839027799",
      email: "williansud@gmail.com",
      password: "123456",
      name: "William",
      id: "a221e3d6-6c77-4757-93f6-188b4de9c91f"
    }
  end
end
