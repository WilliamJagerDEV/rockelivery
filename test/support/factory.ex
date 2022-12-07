defmodule Rockelivery.Factory do
  use ExMachina

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
end
