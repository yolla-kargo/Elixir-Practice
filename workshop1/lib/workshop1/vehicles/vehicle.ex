defmodule Workshop1.Vehicles.Vehicle do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :id, autogenerate: true}
  schema "vehicle" do
    field :status, :string
    field :vehicle_plate, :string

    timestamps()
  end

  @doc false
  def changeset(vehicle, attrs) do
    vehicle
    |> cast(attrs, [:id, :vehicle_plate, :status])
    |> validate_required([:id, :vehicle_plate, :status])
  end
end
