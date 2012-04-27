class Message < ActiveRecord::Base
  belongs_to :channel
  attr_accessible :content, :sended_at, :username
end
