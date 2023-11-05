defmodule BananaBankWeb.UsersJSON do

  alias BananaBank.Users.User

  @spec create(%{
          :user => %BananaBank.Users.User{
            :cep => any(),
            :email => any(),
            :id => any(),
            optional(any()) => any()
          },
          optional(any()) => any()
        }) :: %{data: %{cep: any(), email: any(), id: any()}, messsege: <<_::192>>}
  def create(%{user: user}) do
    %{
      messsege: "User criado com sucesso!",
      data: data(user)
    }
  end
  def get(%{user: user}), do:  %{ data: user }


  def data( %User{} = user ) do
     %{
        id: user.id,
        cep: user.cep,
        email: user.email
     }
  end
end
