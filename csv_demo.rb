require 'csv'

# TODO - let's read/write data from beers.csv
filepath    = 'data/beers.csv'

csv_options = { headers: :first_row }

CSV.foreach(filepath, csv_options) do |row|
  # Here, row is an array of columns
  # p row.class
  p "#{row['Name']}, #{row['Appearance']}, #{row['Origin']}"
end

# From here, storing CSV
CSV.open(filepath, 'ab', csv_options) do |csv|
  # csv << ['Name', 'Appearance', 'Origin']
  csv << ['Asahi', 'Pale Lager', 'Japan']
  csv << ['Gambrinus', 'Pale', 'Czechia']
  # ...
end
