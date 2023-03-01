class UsersController < ApplicationController
  def user_index
    render({ :template => "users/all_users.html.erb"})
  end

  def user_profile
    render({ :template => "users/user_profile.html.erb"})
  end
end
