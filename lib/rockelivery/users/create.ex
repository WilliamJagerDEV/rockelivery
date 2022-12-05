defmodule Rockelivery.Users.Create do
  alias Rockelivery.{Repo, User}

  def call(params) do
    params
    |> User.changeset()
    |> Repo.insert()
    |> handle_insert()
  end

  defp handle_insert({:ok, %User{}} = result), do: result
  defp handle_insert({:error, result}) do
    {:error, %{status: :internal_server_error, result: result}}
  end
end
