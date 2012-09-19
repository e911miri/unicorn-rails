class Department < ActiveRecord::Base
  attr_accessible :description, :hod, :location, :name, :notes, :school
  has_many :courses
end
