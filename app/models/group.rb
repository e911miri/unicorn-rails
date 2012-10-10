class Group < ActiveRecord::Base
  attr_accessible :description, :leader, :name, :notes, :permissions
  has_and_belongs_to_many :users
end
