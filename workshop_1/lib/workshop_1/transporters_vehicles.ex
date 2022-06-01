defmodule Workshop1.Transporters_vehicles do
  @moduledoc """
  The Transporters_vehicles context.
  """

  import Ecto.Query, warn: false
  alias Workshop1.Repo

  alias Workshop1.Transporters_vehicles.Transporters_vehicle

  @doc """
  Returns the list of transporter_vehicle.

  ## Examples

      iex> list_transporter_vehicle()
      [%Transporters_vehicle{}, ...]

  """
  def list_transporter_vehicle do
    Repo.all(Transporters_vehicle)
  end

  @doc """
  Gets a single transporters_vehicle.

  Raises `Ecto.NoResultsError` if the Transporters vehicle does not exist.

  ## Examples

      iex> get_transporters_vehicle!(123)
      %Transporters_vehicle{}

      iex> get_transporters_vehicle!(456)
      ** (Ecto.NoResultsError)

  """
  def get_transporters_vehicle!(id), do: Repo.get!(Transporters_vehicle, id)

  @doc """
  Creates a transporters_vehicle.

  ## Examples

      iex> create_transporters_vehicle(%{field: value})
      {:ok, %Transporters_vehicle{}}

      iex> create_transporters_vehicle(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_transporters_vehicle(attrs \\ %{}) do
    %Transporters_vehicle{}
    |> Transporters_vehicle.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a transporters_vehicle.

  ## Examples

      iex> update_transporters_vehicle(transporters_vehicle, %{field: new_value})
      {:ok, %Transporters_vehicle{}}

      iex> update_transporters_vehicle(transporters_vehicle, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_transporters_vehicle(%Transporters_vehicle{} = transporters_vehicle, attrs) do
    transporters_vehicle
    |> Transporters_vehicle.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a transporters_vehicle.

  ## Examples

      iex> delete_transporters_vehicle(transporters_vehicle)
      {:ok, %Transporters_vehicle{}}

      iex> delete_transporters_vehicle(transporters_vehicle)
      {:error, %Ecto.Changeset{}}

  """
  def delete_transporters_vehicle(%Transporters_vehicle{} = transporters_vehicle) do
    Repo.delete(transporters_vehicle)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking transporters_vehicle changes.

  ## Examples

      iex> change_transporters_vehicle(transporters_vehicle)
      %Ecto.Changeset{data: %Transporters_vehicle{}}

  """
  def change_transporters_vehicle(%Transporters_vehicle{} = transporters_vehicle, attrs \\ %{}) do
    Transporters_vehicle.changeset(transporters_vehicle, attrs)
  end
end
