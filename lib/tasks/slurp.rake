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

  task users: :environment do
    require "csv"

    csv_users_text = File.read(Rails.root.join("lib", "csvs", "users.csv"))
    users_csv = CSV.parse(csv_users_text, :headers => true, :encoding => "ISO-8859-1")
    users_csv.each do |row|
      u = User.new
      u.id = row["id"]
      u.name = row["name"]
      u.username = row["username"]
      u.email = row["email"]
      u.age = row["age"]
      u.save
    end
  end

    task visits: :environment do
      require "csv"
  
      csv_visits_text = File.read(Rails.root.join("lib", "csvs", "visits.csv"))
      visits_csv = CSV.parse(csv_visits_text, :headers => true, :encoding => "ISO-8859-1")
      visits_csv.each do |row|
        v = Visit.new
        v.id = row["id"]
        v.country_id = row["country_id"]
        v.user_id = row["user_id"]
        v.year = row["year"]
        v.save
      end

    end

end
