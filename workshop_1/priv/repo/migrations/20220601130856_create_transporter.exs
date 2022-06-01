defmodule Workshop1.Repo.Migrations.CreateTransporter do
  use Ecto.Migration

  def change do
    create table(:transporter, primary_key: false) do
      add :id, :integer, primary_key: true
      add :name, :string
      add :phone_number, :string
      add :npwp_number, :string
      add :status, :string, default: "not_validated"

      timestamps()
    end
  end
end
