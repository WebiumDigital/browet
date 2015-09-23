class Menu < ActiveRecord::Base
  validates :name, :presence => true
  extend FriendlyId
  friendly_id :name, use: :slugged
end
