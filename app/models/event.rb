class Event < ActiveRecord::Base
  attr_accessible :audience, :fee, :location, :name, :notes, :time
end
