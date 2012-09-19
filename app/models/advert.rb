class Advert < ActiveRecord::Base
  attr_accessible :audience, :duration, :messgae, :notes, :url, :user_id
end
