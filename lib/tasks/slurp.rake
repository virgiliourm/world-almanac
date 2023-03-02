namespace :slurp do
  desc "TODO"
  task countries: :environment do
    require "csv"

  csv_countries_text = File.read(Rails.root.join("lib", "csvs", "countries.csv"))
  countries_csv = CSV.parse(csv_countries_text, :headers => true, :encoding => "ISO-8859-1")
  countries_csv.each do |row|
    c = Country.new
    c.id = row["id"]
    c.name = row["Country Name"]
    c.capital = row["Capital"]
    c.language = row["Official Language"]
    c.currency = row["Currency"]
    c.population = row["Population"]
    c.head_of_state = row["Head of Government"]
    c.save

end

  end

end
