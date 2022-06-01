defmodule Workshop1Web.Transporters_vehicleController do
  use Workshop1Web, :controller

  alias Workshop1.Transporters_vehicles
  alias Workshop1.Transporters_vehicles.Transporters_vehicle

  action_fallback Workshop1Web.FallbackController

  def index(conn, _params) do
    transporter_vehicle = Transporters_vehicles.list_transporter_vehicle()
    render(conn, "index.json", transporter_vehicle: transporter_vehicle)
  end

  def create(conn, %{"transporters_vehicle" => transporters_vehicle_params}) do
    with {:ok, %Transporters_vehicle{} = transporters_vehicle} <- Transporters_vehicles.create_transporters_vehicle(transporters_vehicle_params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", Routes.transporters_vehicle_path(conn, :show, transporters_vehicle))
      |> render("show.json", transporters_vehicle: transporters_vehicle)
    end
  end

  def show(conn, %{"id" => id}) do
    transporters_vehicle = Transporters_vehicles.get_transporters_vehicle!(id)
    render(conn, "show.json", transporters_vehicle: transporters_vehicle)
  end

  def update(conn, %{"id" => id, "transporters_vehicle" => transporters_vehicle_params}) do
    transporters_vehicle = Transporters_vehicles.get_transporters_vehicle!(id)

    with {:ok, %Transporters_vehicle{} = transporters_vehicle} <- Transporters_vehicles.update_transporters_vehicle(transporters_vehicle, transporters_vehicle_params) do
      render(conn, "show.json", transporters_vehicle: transporters_vehicle)
    end
  end

  def delete(conn, %{"id" => id}) do
    transporters_vehicle = Transporters_vehicles.get_transporters_vehicle!(id)

    with {:ok, %Transporters_vehicle{}} <- Transporters_vehicles.delete_transporters_vehicle(transporters_vehicle) do
      send_resp(conn, :no_content, "")
    end
  end
end
