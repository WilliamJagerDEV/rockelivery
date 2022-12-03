defmodule Rockelivery.User do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}

  @required_params [:age, :address, :cep, :cpf, :email, :password_hash, :name]

  schema "users" do
    field :address, :string
    field :age, :integer
    field :cep, :string
    field :cpf, :string
    field :email, :string
    field :password_hash, :string
    field :name, :string

    timestamps()
  end

  def changeset(params) do
    %__MODULE__{}
    |> cast(params, @required_params)
  end

  # Rockelivery.User.test_changeset
  def test_changeset do
    %{
      age: 27,
      address: "Rua Guanabara 56",
      cep: "29164815",
      cpf: "11839027789",
      email: "william@gmail.com",
      password_hash: "26maio09",
      name: "William"
    }
    |> changeset()
  end
end
