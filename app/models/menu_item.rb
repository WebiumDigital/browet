class MenuItem < ActiveRecord::Base
  belongs_to :menu
  belongs_to :item, :polymorphic => true
  validates :menu, :item, :presence => true
end
