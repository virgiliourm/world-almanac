class UsersController < ApplicationController

  def home
    render({ :template => "/users/home_page.html.erb"})
  end

  def show_all_users
    matching_users = User.all

    @list_of_users = matching_users.order({ :created_at => :asc })

    render({ :template => "/users/show_all.html.erb" })
  end

  def show_profile
    user_username = params.fetch("the_username")
    @user = User.where({ :username => user_username}).at(0)

    render({ :template => "/users/show_profile.html.erb" })
  end

end
