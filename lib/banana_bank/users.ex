defmodule BananaBank.Users do

  alias BananaBank.Users.Create

  # Direciona chamada da função para o módulo e, em seguida, para a função call;
  defdelegate create(params), to: Create, as: :call
end
