defmodule Rockelivery.Users.Get do
  alias Rockelivery.{Repo, User}
  alias Ecto.UUID

  def by_id(id) do
    with {:ok, uuid} <- UUID.cast(id),
         %User{} = user <- Repo.get(User, uuid) do
      {:ok, user}
    else
      :error -> {:error, %{status: :bad_request, result: "Invalid id format!"}}
      nil -> {:error, %{status: :not_found, result: "User not found!"}}
    end
  end
end