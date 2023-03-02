# == Schema Information
#
# Table name: countries
#
#  id            :integer          not null, primary key
#  capital       :string
#  currency      :string
#  head_of_state :string
#  language      :string
#  name          :string
#  population    :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Country < ApplicationRecord
  validates :name, :uniqueness => { :case_sensitive => false }
  has_many(:visits, { :class_name => "Visit", :foreign_key => "country_id", :dependent => :destroy })

end
