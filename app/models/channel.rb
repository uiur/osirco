class Channel < ActiveRecord::Base
  attr_accessible :name
  has_many :messages

  extend FriendlyId
  friendly_id :name, use: :slugged
end
