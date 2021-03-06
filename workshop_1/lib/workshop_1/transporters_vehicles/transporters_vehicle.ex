defmodule Workshop1.Transporters_vehicles.Transporters_vehicle do
  use Ecto.Schema
  import Ecto.Changeset

  schema "transporter_vehicle" do
    belongs_to :transporter, Workshop1.Transporters.Transporter, foreign_key: :transporter_id, references: :id
    belongs_to :vehicle, Workshop1.Vehicles.Vehicle, foreign_key: :vehicle_id, references: :id

    timestamps()
  end

  @doc false
  def changeset(transporters_vehicle, attrs) do
    transporters_vehicle
    |> cast(attrs, [:transporter_id, :vehicle_id])
    |> validate_required([:transporter_id, :vehicle_id])
  end
end
