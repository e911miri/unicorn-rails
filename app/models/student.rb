class Student < ActiveRecord::Base
  attr_accessible :department_id, :matric_no, :name, :user_profile_id
  belongs_to :department
  has_one :user_profile
end
