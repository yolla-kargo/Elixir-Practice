defmodule Workshop1.Transporters_vehiclesTest do
  use Workshop1.DataCase

  alias Workshop1.Transporters_vehicles

  describe "transporter_vehicle" do
    alias Workshop1.Transporters_vehicles.Transporters_vehicle

    import Workshop1.Transporters_vehiclesFixtures

    @invalid_attrs %{transporter_id: nil, vehicle_id: nil}

    test "list_transporter_vehicle/0 returns all transporter_vehicle" do
      transporters_vehicle = transporters_vehicle_fixture()
      assert Transporters_vehicles.list_transporter_vehicle() == [transporters_vehicle]
    end

    test "get_transporters_vehicle!/1 returns the transporters_vehicle with given id" do
      transporters_vehicle = transporters_vehicle_fixture()
      assert Transporters_vehicles.get_transporters_vehicle!(transporters_vehicle.id) == transporters_vehicle
    end

    test "create_transporters_vehicle/1 with valid data creates a transporters_vehicle" do
      valid_attrs = %{transporter_id: 42, vehicle_id: 42}

      assert {:ok, %Transporters_vehicle{} = transporters_vehicle} = Transporters_vehicles.create_transporters_vehicle(valid_attrs)
      assert transporters_vehicle.transporter_id == 42
      assert transporters_vehicle.vehicle_id == 42
    end

    test "create_transporters_vehicle/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Transporters_vehicles.create_transporters_vehicle(@invalid_attrs)
    end

    test "update_transporters_vehicle/2 with valid data updates the transporters_vehicle" do
      transporters_vehicle = transporters_vehicle_fixture()
      update_attrs = %{transporter_id: 43, vehicle_id: 43}

      assert {:ok, %Transporters_vehicle{} = transporters_vehicle} = Transporters_vehicles.update_transporters_vehicle(transporters_vehicle, update_attrs)
      assert transporters_vehicle.transporter_id == 43
      assert transporters_vehicle.vehicle_id == 43
    end

    test "update_transporters_vehicle/2 with invalid data returns error changeset" do
      transporters_vehicle = transporters_vehicle_fixture()
      assert {:error, %Ecto.Changeset{}} = Transporters_vehicles.update_transporters_vehicle(transporters_vehicle, @invalid_attrs)
      assert transporters_vehicle == Transporters_vehicles.get_transporters_vehicle!(transporters_vehicle.id)
    end

    test "delete_transporters_vehicle/1 deletes the transporters_vehicle" do
      transporters_vehicle = transporters_vehicle_fixture()
      assert {:ok, %Transporters_vehicle{}} = Transporters_vehicles.delete_transporters_vehicle(transporters_vehicle)
      assert_raise Ecto.NoResultsError, fn -> Transporters_vehicles.get_transporters_vehicle!(transporters_vehicle.id) end
    end

    test "change_transporters_vehicle/1 returns a transporters_vehicle changeset" do
      transporters_vehicle = transporters_vehicle_fixture()
      assert %Ecto.Changeset{} = Transporters_vehicles.change_transporters_vehicle(transporters_vehicle)
    end
  end
end
