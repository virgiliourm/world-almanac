class CountriesController < ApplicationController
  def country_index
    render({ :template => "countries/all_countries.html.erb" })
  end

  def country_page
    render({ :template => "countries/country_profile.html.erb"})
  end

  def create
    @country_name = params.fetch("country_name_input")
    redirect_to("/countries")
  #end

end
