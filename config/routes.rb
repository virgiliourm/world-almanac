Rails.application.routes.draw do






  # Routes for the Country resource:

  # CREATE
  post("/insert_country", { :controller => "countries", :action => "create" })
          
  # READ
  get("/countries", { :controller => "countries", :action => "index" })
  
  get("/countries/:path_id", { :controller => "countries", :action => "show" })
  
  # UPDATE
  
  post("/modify_country/:path_id", { :controller => "countries", :action => "update" })
  
  # DELETE
  get("/delete_country/:path_id", { :controller => "countries", :action => "destroy" })

  #------------------------------

  # Routes for the Visit resource:

  # CREATE
  post("/insert_visit", { :controller => "visits", :action => "create" })
          
  # READ
  get("/visits", { :controller => "visits", :action => "index" })
  
  get("/visits/:path_id", { :controller => "visits", :action => "show" })
  
  # UPDATE
  
  post("/modify_visit/:path_id", { :controller => "visits", :action => "update" })
  
  # DELETE
  get("/delete_visit/:path_id", { :controller => "visits", :action => "destroy" })

  #------------------------------

  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })        
  # CREATE RECORD
  post("/insert_user", { :controller => "user_authentication", :action => "create"  })
      
  # EDIT PROFILE FORM        
  get("/edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })       
  # UPDATE RECORD
  post("/modify_user", { :controller => "user_authentication", :action => "update" })
  
  # DELETE RECORD
  get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })
             
  #------------------------------

end
