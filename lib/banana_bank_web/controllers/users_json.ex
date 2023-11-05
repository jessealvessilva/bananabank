defmodule BananaBankWeb.UsersJSON do

  alias BananaBank.Users.User

  def create(%{user: user}) do
    %{
      messsege: "User criado com sucesso!",
      data: data(user)
    }
  end
  def get(%{user: user}), do:  %{ data: data(user) }
  def update(%{user: user}), do:  %{message: "User atualizado com sucesso", data: data(user) }

  def data( %User{} = user ) do
     %{
        id: user.id,
        cep: user.cep,
        email: user.email
     }
  end
end
