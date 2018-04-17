defmodule PoliceRecords.Repo.Migrations.CreateCrimes do
  use Ecto.Migration

  def change do
    create table(:crimes) do
      add :crime_id, :string
      add :month, :string
      add :reported_by, :string
      add :falls_within, :string
      add :longitude, :decimal
      add :latitude, :decimal
      add :location, :string
      add :LSOA_code, :string
      add :LSOA_name, :string
      add :crime_type, :string
      add :last_outcome_category, :string
      add :context, :string

      timestamps()
    end

  end
end
