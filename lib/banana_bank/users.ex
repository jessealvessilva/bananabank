defmodule BananaBank.Users do

  alias BananaBank.Users.Create
  alias BananaBank.Users.Get

  # Direciona chamada da função para o módulo e, em seguida, para a função call;
  defdelegate create(params), to: Create, as: :call
  defdelegate get(id), to: Get, as: :call
end
