class CountriesController < ApplicationController
  def index
    matching_countries = Country.all

    @list_of_countries = matching_countries.order({ :created_at => :desc })

    render({ :template => "countries/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_countries = Country.where({ :id => the_id })

    @the_country = matching_countries.at(0)

    render({ :template => "countries/show.html.erb" })
  end

  def create
    the_country = Country.new
    the_country.name = params.fetch("query_name")
    the_country.capital = params.fetch("query_capital")
    the_country.currency = params.fetch("query_currency")
    the_country.language = params.fetch("query_language")
    the_country.head_of_state = params.fetch("query_head_of_state")
    the_country.population = params.fetch("query_population")

    if the_country.valid?
      the_country.save
      redirect_to("/countries", { :notice => "Country created successfully." })
    else
      redirect_to("/countries", { :alert => the_country.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_country = Country.where({ :id => the_id }).at(0)

    the_country.name = params.fetch("query_name")
    the_country.capital = params.fetch("query_capital")
    the_country.currency = params.fetch("query_currency")
    the_country.language = params.fetch("query_language")
    the_country.head_of_state = params.fetch("query_head_of_state")
    the_country.population = params.fetch("query_population")

    if the_country.valid?
      the_country.save
      redirect_to("/countries/#{the_country.id}", { :notice => "Country updated successfully."} )
    else
      redirect_to("/countries/#{the_country.id}", { :alert => the_country.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_country = Country.where({ :id => the_id }).at(0)

    the_country.destroy

    redirect_to("/countries", { :notice => "Country deleted successfully."} )
  end
end
