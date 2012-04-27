class Channel < ActiveRecord::Base
  attr_accessible :host, :name

  validates :host, :presence => true
end
