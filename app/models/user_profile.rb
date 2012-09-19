class UserProfile < ActiveRecord::Base
  attr_accessible :first_name, :notes, :phone, :user_id
end
