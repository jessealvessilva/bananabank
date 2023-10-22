defmodule BananaBankWeb.UsersJSON do

  def create(%{user: user}) do
    %{
      messsege: "User criado com sucesso!",
      id: user.id,
      cep: user.cep,
      cep: user.email
    }
  end
end
