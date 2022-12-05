defmodule Rockelivery.MyTests do
  use Ecto.Schema

  alias Rockelivery.Users.Create

  # Rockelivery.MyTests.test_changeset
  def test_changeset do
    %{
      age: 27,
      address: "Rua Guanabara 56",
      cep: "29164815",
      cpf: "12242347748",
      email: "tamires@gmail.com",
      password: "26maio09",
      name: "William"
    }
    |> Create.call()

    # |> User.changeset()
    # |> Repo.insert()

    # Repo.all(User)
    # Repo.get(User, "c11340e2-5bae-4ebf-afe6-b6fbb436feea")
  end
end
