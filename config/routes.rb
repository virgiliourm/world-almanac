Rails.application.routes.draw do

  #Make sure to change this
  get("/", { :controller => "countries", :action => "country_index"})

  get("/countries", { :controller => "countries", :action => "country_index" })
  get("/countries/:country_id", { :controller => "countries", :action => "country_page" })
  post("/new_country", { :controller => "countries", :action => "create"})

  get("/users", { :controller => "users", :action => "user_index" })
  get("/users/:user_id", { :controller => "users", :action => "user_profile" })




end
