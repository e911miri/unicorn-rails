class Accomodation < ActiveRecord::Base
  attr_accessible :location, :name, :notes, :size, :status, :type
end
