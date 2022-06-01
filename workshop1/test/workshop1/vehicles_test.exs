defmodule Workshop1.VehiclesTest do
  use Workshop1.DataCase

  alias Workshop1.Vehicles

  describe "vehicle" do
    alias Workshop1.Vehicles.Vehicle

    import Workshop1.VehiclesFixtures

    @invalid_attrs %{id: nil, status: nil, vehicle_plate: nil}

    test "list_vehicle/0 returns all vehicle" do
      vehicle = vehicle_fixture()
      assert Vehicles.list_vehicle() == [vehicle]
    end

    test "get_vehicle!/1 returns the vehicle with given id" do
      vehicle = vehicle_fixture()
      assert Vehicles.get_vehicle!(vehicle.id) == vehicle
    end

    test "create_vehicle/1 with valid data creates a vehicle" do
      valid_attrs = %{id: "some id", status: "some status", vehicle_plate: "some vehicle_plate"}

      assert {:ok, %Vehicle{} = vehicle} = Vehicles.create_vehicle(valid_attrs)
      assert vehicle.id == "some id"
      assert vehicle.status == "some status"
      assert vehicle.vehicle_plate == "some vehicle_plate"
    end

    test "create_vehicle/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Vehicles.create_vehicle(@invalid_attrs)
    end

    test "update_vehicle/2 with valid data updates the vehicle" do
      vehicle = vehicle_fixture()
      update_attrs = %{id: "some updated id", status: "some updated status", vehicle_plate: "some updated vehicle_plate"}

      assert {:ok, %Vehicle{} = vehicle} = Vehicles.update_vehicle(vehicle, update_attrs)
      assert vehicle.id == "some updated id"
      assert vehicle.status == "some updated status"
      assert vehicle.vehicle_plate == "some updated vehicle_plate"
    end

    test "update_vehicle/2 with invalid data returns error changeset" do
      vehicle = vehicle_fixture()
      assert {:error, %Ecto.Changeset{}} = Vehicles.update_vehicle(vehicle, @invalid_attrs)
      assert vehicle == Vehicles.get_vehicle!(vehicle.id)
    end

    test "delete_vehicle/1 deletes the vehicle" do
      vehicle = vehicle_fixture()
      assert {:ok, %Vehicle{}} = Vehicles.delete_vehicle(vehicle)
      assert_raise Ecto.NoResultsError, fn -> Vehicles.get_vehicle!(vehicle.id) end
    end

    test "change_vehicle/1 returns a vehicle changeset" do
      vehicle = vehicle_fixture()
      assert %Ecto.Changeset{} = Vehicles.change_vehicle(vehicle)
    end
  end

  describe "vehicle" do
    alias Workshop1.Vehicles.Vehicle

    import Workshop1.VehiclesFixtures

    @invalid_attrs %{id: nil, status: nil, vehicle_plate: nil}

    test "list_vehicle/0 returns all vehicle" do
      vehicle = vehicle_fixture()
      assert Vehicles.list_vehicle() == [vehicle]
    end

    test "get_vehicle!/1 returns the vehicle with given id" do
      vehicle = vehicle_fixture()
      assert Vehicles.get_vehicle!(vehicle.id) == vehicle
    end

    test "create_vehicle/1 with valid data creates a vehicle" do
      valid_attrs = %{id: 42, status: "some status", vehicle_plate: "some vehicle_plate"}

      assert {:ok, %Vehicle{} = vehicle} = Vehicles.create_vehicle(valid_attrs)
      assert vehicle.id == 42
      assert vehicle.status == "some status"
      assert vehicle.vehicle_plate == "some vehicle_plate"
    end

    test "create_vehicle/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Vehicles.create_vehicle(@invalid_attrs)
    end

    test "update_vehicle/2 with valid data updates the vehicle" do
      vehicle = vehicle_fixture()
      update_attrs = %{id: 43, status: "some updated status", vehicle_plate: "some updated vehicle_plate"}

      assert {:ok, %Vehicle{} = vehicle} = Vehicles.update_vehicle(vehicle, update_attrs)
      assert vehicle.id == 43
      assert vehicle.status == "some updated status"
      assert vehicle.vehicle_plate == "some updated vehicle_plate"
    end

    test "update_vehicle/2 with invalid data returns error changeset" do
      vehicle = vehicle_fixture()
      assert {:error, %Ecto.Changeset{}} = Vehicles.update_vehicle(vehicle, @invalid_attrs)
      assert vehicle == Vehicles.get_vehicle!(vehicle.id)
    end

    test "delete_vehicle/1 deletes the vehicle" do
      vehicle = vehicle_fixture()
      assert {:ok, %Vehicle{}} = Vehicles.delete_vehicle(vehicle)
      assert_raise Ecto.NoResultsError, fn -> Vehicles.get_vehicle!(vehicle.id) end
    end

    test "change_vehicle/1 returns a vehicle changeset" do
      vehicle = vehicle_fixture()
      assert %Ecto.Changeset{} = Vehicles.change_vehicle(vehicle)
    end
  end
end
