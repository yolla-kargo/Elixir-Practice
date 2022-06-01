defmodule Workshop1Web.VehicleView do
  use Workshop1Web, :view
  alias Workshop1Web.VehicleView

  def render("index.json", %{vehicle: vehicle}) do
    %{data: render_many(vehicle, VehicleView, "vehicle.json")}
  end

  def render("show.json", %{vehicle: vehicle}) do
    %{data: render_one(vehicle, VehicleView, "vehicle.json")}
  end

  def render("vehicle.json", %{vehicle: vehicle}) do
    %{
      id: vehicle.id,
      id: vehicle.id,
      vehicle_plate: vehicle.vehicle_plate,
      status: vehicle.status
    }
  end
end
