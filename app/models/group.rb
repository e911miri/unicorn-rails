class Group < ActiveRecord::Base
  attr_accessible :description, :leader, :name, :notes, :permissions
end
