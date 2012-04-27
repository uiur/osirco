class Channel < ActiveRecord::Base
  attr_accessible :host, :name
  has_many :messages
  validates :host, :presence => true
end
