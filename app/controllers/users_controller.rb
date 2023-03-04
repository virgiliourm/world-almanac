class UsersController < ApplicationController

  def home
    render({ :template => "/users/home_page.html.erb"})
  end

  def user_own_profile
    if session.fetch(:user_id) == nil
    redirect_to("/user_sign_in")
    else
    redirect_to("/users/" + @current_user.username)
    end 
  end

  def see_errors

    render({ :template => "/users/error_summary.html.erb"})
  end

  def show_all_users
    matching_users = User.all

    @list_of_users = matching_users.order({ :created_at => :asc })

    render({ :template => "/users/show_all.html.erb" })
  end

  def show_profile
    user_username = params.fetch("the_username")

    @current_user = User.where({ :username => user_username}).at(0)

    render({ :template => "/users/show_profile.html.erb" })
  end

end
