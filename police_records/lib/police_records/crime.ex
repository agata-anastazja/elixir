defmodule PoliceRecords.Crime do
  use Ecto.Schema
  import Ecto.Changeset


  schema "crimes" do
    field :LSOA_code, :string
    field :LSOA_name, :string
    field :context, :string
    field :crime_id, :string
    field :crime_type, :string
    field :falls_within, :string
    field :last_outcome_category, :string
    field :latitude, :decimal
    field :location, :string
    field :longitude, :decimal
    field :month, :string
    field :reported_by, :string

    timestamps()
  end

  @doc false
  def changeset(crime, attrs) do
    crime
    |> cast(attrs, [:crime_id, :month, :reported_by, :falls_within, :longitude, :latitude, :location, :LSOA_code, :LSOA_name, :crime_type, :last_outcome_category, :context])
  end
end
