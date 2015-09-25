class CollectionToCategory < ActiveRecord::Base
  belongs_to :collection
  belongs_to :category
end
