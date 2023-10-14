defmodule BananaBankWeb.WelcomeController do
  use BananaBankWeb, :controller

  def index(conn, params) do

    conn
    |> put_status(:ok)
    |> json("Bem vindo ao BananaBank")
  end
end
