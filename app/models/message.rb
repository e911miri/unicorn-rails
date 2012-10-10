class Message < ActiveRecord::Base
  attr_accessible :body, :recipient_id, :sender_id, :status, :subject, :user_id
  belongs_to :user
end
