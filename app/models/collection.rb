class Collection < ActiveRecord::Base
  validates :title, :presence => true
end