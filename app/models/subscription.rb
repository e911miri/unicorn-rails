class Subscription < ActiveRecord::Base
  attr_accessible :resource, :resource_id, :type
end
