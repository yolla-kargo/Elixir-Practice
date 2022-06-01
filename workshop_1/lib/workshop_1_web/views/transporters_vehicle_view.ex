defmodule Workshop1Web.Transporters_vehicleView do
  use Workshop1Web, :view
  alias Workshop1Web.Transporters_vehicleView

  def render("index.json", %{transporter_vehicle: transporter_vehicle}) do
    %{data: render_many(transporter_vehicle, Transporters_vehicleView, "transporters_vehicle.json")}
  end

  def render("show.json", %{transporters_vehicle: transporters_vehicle}) do
    %{data: render_one(transporters_vehicle, Transporters_vehicleView, "transporters_vehicle.json")}
  end

  def render("transporters_vehicle.json", %{transporters_vehicle: transporters_vehicle}) do
    %{
      id: transporters_vehicle.id,
      transporter_id: transporters_vehicle.transporter_id,
      vehicle_id: transporters_vehicle.vehicle_id
    }
  end
end
