defmodule Workshop1.Transporters.Transporter do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :id, autogenerate: true}
  schema "transporter" do
    field :name, :string
    field :npwp_number, :string
    field :phone_number, :string
    field :status, :string, default: "not_validated"

    timestamps()
  end

  @doc false
  def changeset(transporter, attrs) do
    transporter
    |> cast(attrs, [:id, :name, :phone_number, :npwp_number, :status])
    |> validate_required([:name, :phone_number, :npwp_number])
  end
end
