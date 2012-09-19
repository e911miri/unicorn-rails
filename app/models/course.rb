class Course < ActiveRecord::Base
  attr_accessible :code, :depatement_id, :notes, :prerequisites, :summary, :synopsis, :title, :unit
  has_one :department
end
