defmodule Workshop1.Transporters_vehiclesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Workshop1.Transporters_vehicles` context.
  """

  @doc """
  Generate a transporter_vehicle.
  """
  def transporter_vehicle_fixture(attrs \\ %{}) do
    {:ok, transporter_vehicle} =
      attrs
      |> Enum.into(%{
        transporter_id: 42,
        vehicle_id: 42
      })
      |> Workshop1.Transporters_vehicles.create_transporter_vehicle()

    transporter_vehicle
  end
end
