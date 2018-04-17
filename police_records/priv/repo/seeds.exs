# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     PoliceRecords.Repo.insert!(%PoliceRecords.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.


defmodule Seeds do

  alias PoliceRecords.Crime


  def import_from_csv(csv_path) do
    File.stream!(Path.expand(csv_path))
    |> CSV.decode(separator: ?;, headers: true)
    |> Stream.each(fn(row) -> _insert_csv_row(row) end)
    |> Stream.run
  end

  defp _insert_csv_row(row) do
    Crime.changeset(%Crime{},
    %{crime_id: Enum.at(row, 0),
      month: Enum.at(row, 1),
      reported_by: Enum.at(row, 2),
      falls_within: Enum.at(row, 3),
      longitude: Enum.at(row, 4),
      latitude: Enum.at(row, 5),
      location: Enum.at(row, 6),
      LSOA_code: Enum.at(row, 7),
      LSOA_name: Enum.at(row, 8),
      crime_type: Enum.at(row, 9),
      last_outcome_category: Enum.at(row, 10),
      context: Enum.at(row, 11)}
      )
     |> Crimes.Repo.insert
  end

# Stream.each(fn row ->
    #   _process_csv_row(row, agent)
    # end)
    # |> Stream.run
end
