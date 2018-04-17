defmodule Seed do

  def import_from_csv(csv_path) do
    File.stream!(Path.expand(csv_path))
    |> CSV.decode(separator: ?;, headers: true)
    |> Enum.each(_insert_csv_row(row))
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

end
