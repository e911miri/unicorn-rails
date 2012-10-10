class Course < ActiveRecord::Base
  attr_accessible :code, :depatement_id, :notes, :prerequisites, :summary, :synopsis, :title, :unit
  belongs_to :department
end
