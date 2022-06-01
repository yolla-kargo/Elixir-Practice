defmodule Workshop1.Repo.Migrations.CreateTransporterVehicle do
  use Ecto.Migration

  def change do
    create table(:transporter_vehicle) do
      add :transporter_id, references(:transporter)
      add :vehicle_id, references(:vehicle)

      timestamps()
    end
  end
end
