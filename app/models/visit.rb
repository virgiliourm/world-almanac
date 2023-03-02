# == Schema Information
#
# Table name: visits
#
#  id         :integer          not null, primary key
#  year       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  country_id :integer
#  user_id    :integer
#
class Visit < ApplicationRecord
  belongs_to(:user, { :required => true, :class_name => "User", :foreign_key => "user_id" })
  belongs_to(:country, { :required => true, :class_name => "Country", :foreign_key => "country_id" })
  
end
