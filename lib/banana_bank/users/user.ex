defmodule BananaBank.Users.User do
  use    Ecto.Schema
  import Ecto.Changeset

  alias Ecto.Changeset

  @required_params [:name, :password, :email, :cep]

  # @derive{Jason.Encoder, only: [:name]}
  @derive{Jason.Encoder, except: [:__meta__]}
  schema "users" do
    field :name, :string
    field :password, :string, virtual: true
    field :password_hash, :string
    field :email, :string
    field :cep, :string


    timestamps()
  end

  def changeset(user \\ %__MODULE__{}, params ) do
    user
    |> cast(params,  @required_params )
    |> validate_required(@required_params)
    |> validate_format(:email, ~r/@/)
    |> validate_length(:cep, min: 8)
    |> add_password_hash()
  end

  defp add_password_hash(%Changeset{valid?: true, changes: %{password: password}} = changeset) do

    # changes = %{password: Pbkdf2.hash_pwd_salt(password)}

    change(changeset, %{password_hash: Pbkdf2.hash_pwd_salt(password)})

    # change( changeset , Pbkdf2.hash_pwd_salt(password))
  end

  defp add_password_hash(changeset), do: changeset


end
