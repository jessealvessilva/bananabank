defmodule BananaBankWeb.FallbackController do
  use BananaBankWeb, :controller

  alias BananaBank.Users.Create
  alias BananaBank.Users.User

  def call(conn, {:error, :not_found }) do
    conn
    |> put_status(:not_found)
    |> put_view(json: BananaBankWeb.ErrorJSON)
    |> render(:error, status: :not_found)
  end

  def call(conn, {:error, %Ecto.Changeset{} = changeset}) do
    conn
    |> put_status(:unprocessable_entity)
    |> put_view(json: BananaBankWeb.ErrorJSON)
    |> render(:error, changeset: changeset)
  end
end
