defmodule Workshop1.Transporters_vehiclesTest do
  use Workshop1.DataCase

  alias Workshop1.Transporters_vehicles

  describe "transporter_vehicle" do
    alias Workshop1.Transporters_vehicles.Transporter_vehicle

    import Workshop1.Transporters_vehiclesFixtures

    @invalid_attrs %{transporter_id: nil, vehicle_id: nil}

    test "list_transporter_vehicle/0 returns all transporter_vehicle" do
      transporter_vehicle = transporter_vehicle_fixture()
      assert Transporters_vehicles.list_transporter_vehicle() == [transporter_vehicle]
    end

    test "get_transporter_vehicle!/1 returns the transporter_vehicle with given id" do
      transporter_vehicle = transporter_vehicle_fixture()
      assert Transporters_vehicles.get_transporter_vehicle!(transporter_vehicle.id) == transporter_vehicle
    end

    test "create_transporter_vehicle/1 with valid data creates a transporter_vehicle" do
      valid_attrs = %{transporter_id: 42, vehicle_id: 42}

      assert {:ok, %Transporter_vehicle{} = transporter_vehicle} = Transporters_vehicles.create_transporter_vehicle(valid_attrs)
      assert transporter_vehicle.transporter_id == 42
      assert transporter_vehicle.vehicle_id == 42
    end

    test "create_transporter_vehicle/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Transporters_vehicles.create_transporter_vehicle(@invalid_attrs)
    end

    test "update_transporter_vehicle/2 with valid data updates the transporter_vehicle" do
      transporter_vehicle = transporter_vehicle_fixture()
      update_attrs = %{transporter_id: 43, vehicle_id: 43}

      assert {:ok, %Transporter_vehicle{} = transporter_vehicle} = Transporters_vehicles.update_transporter_vehicle(transporter_vehicle, update_attrs)
      assert transporter_vehicle.transporter_id == 43
      assert transporter_vehicle.vehicle_id == 43
    end

    test "update_transporter_vehicle/2 with invalid data returns error changeset" do
      transporter_vehicle = transporter_vehicle_fixture()
      assert {:error, %Ecto.Changeset{}} = Transporters_vehicles.update_transporter_vehicle(transporter_vehicle, @invalid_attrs)
      assert transporter_vehicle == Transporters_vehicles.get_transporter_vehicle!(transporter_vehicle.id)
    end

    test "delete_transporter_vehicle/1 deletes the transporter_vehicle" do
      transporter_vehicle = transporter_vehicle_fixture()
      assert {:ok, %Transporter_vehicle{}} = Transporters_vehicles.delete_transporter_vehicle(transporter_vehicle)
      assert_raise Ecto.NoResultsError, fn -> Transporters_vehicles.get_transporter_vehicle!(transporter_vehicle.id) end
    end

    test "change_transporter_vehicle/1 returns a transporter_vehicle changeset" do
      transporter_vehicle = transporter_vehicle_fixture()
      assert %Ecto.Changeset{} = Transporters_vehicles.change_transporter_vehicle(transporter_vehicle)
    end
  end
end
