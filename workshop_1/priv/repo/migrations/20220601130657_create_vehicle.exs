defmodule Workshop1.Repo.Migrations.CreateVehicle do
  use Ecto.Migration

  def change do
    create table(:vehicle, primary_key: false) do
      add :id, :integer, primary_key: true
      add :vehicle_plate, :string
      add :status, :string, default: "not_validated"

      timestamps()
    end
  end
end
