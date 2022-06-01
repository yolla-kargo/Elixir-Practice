defmodule Workshop1Web.Transporters_vehicleControllerTest do
  use Workshop1Web.ConnCase

  import Workshop1.Transporters_vehiclesFixtures

  alias Workshop1.Transporters_vehicles.Transporters_vehicle

  @create_attrs %{
    transporter_id: 42,
    vehicle_id: 42
  }
  @update_attrs %{
    transporter_id: 43,
    vehicle_id: 43
  }
  @invalid_attrs %{transporter_id: nil, vehicle_id: nil}

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "index" do
    test "lists all transporter_vehicle", %{conn: conn} do
      conn = get(conn, Routes.transporters_vehicle_path(conn, :index))
      assert json_response(conn, 200)["data"] == []
    end
  end

  describe "create transporters_vehicle" do
    test "renders transporters_vehicle when data is valid", %{conn: conn} do
      conn = post(conn, Routes.transporters_vehicle_path(conn, :create), transporters_vehicle: @create_attrs)
      assert %{"id" => id} = json_response(conn, 201)["data"]

      conn = get(conn, Routes.transporters_vehicle_path(conn, :show, id))

      assert %{
               "id" => ^id,
               "transporter_id" => 42,
               "vehicle_id" => 42
             } = json_response(conn, 200)["data"]
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, Routes.transporters_vehicle_path(conn, :create), transporters_vehicle: @invalid_attrs)
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "update transporters_vehicle" do
    setup [:create_transporters_vehicle]

    test "renders transporters_vehicle when data is valid", %{conn: conn, transporters_vehicle: %Transporters_vehicle{id: id} = transporters_vehicle} do
      conn = put(conn, Routes.transporters_vehicle_path(conn, :update, transporters_vehicle), transporters_vehicle: @update_attrs)
      assert %{"id" => ^id} = json_response(conn, 200)["data"]

      conn = get(conn, Routes.transporters_vehicle_path(conn, :show, id))

      assert %{
               "id" => ^id,
               "transporter_id" => 43,
               "vehicle_id" => 43
             } = json_response(conn, 200)["data"]
    end

    test "renders errors when data is invalid", %{conn: conn, transporters_vehicle: transporters_vehicle} do
      conn = put(conn, Routes.transporters_vehicle_path(conn, :update, transporters_vehicle), transporters_vehicle: @invalid_attrs)
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "delete transporters_vehicle" do
    setup [:create_transporters_vehicle]

    test "deletes chosen transporters_vehicle", %{conn: conn, transporters_vehicle: transporters_vehicle} do
      conn = delete(conn, Routes.transporters_vehicle_path(conn, :delete, transporters_vehicle))
      assert response(conn, 204)

      assert_error_sent 404, fn ->
        get(conn, Routes.transporters_vehicle_path(conn, :show, transporters_vehicle))
      end
    end
  end

  defp create_transporters_vehicle(_) do
    transporters_vehicle = transporters_vehicle_fixture()
    %{transporters_vehicle: transporters_vehicle}
  end
end
