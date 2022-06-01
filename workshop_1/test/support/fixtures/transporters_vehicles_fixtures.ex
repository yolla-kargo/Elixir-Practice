defmodule Workshop1.Transporters_vehiclesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Workshop1.Transporters_vehicles` context.
  """

  @doc """
  Generate a transporters_vehicle.
  """
  def transporters_vehicle_fixture(attrs \\ %{}) do
    {:ok, transporters_vehicle} =
      attrs
      |> Enum.into(%{
        transporter_id: 42,
        vehicle_id: 42
      })
      |> Workshop1.Transporters_vehicles.create_transporters_vehicle()

    transporters_vehicle
  end
end
