class Message < ActiveRecord::Base
  belongs_to :channel
  attr_accessible :content, :sended_at, :username

  default_scope order('sended_at DESC')
end
