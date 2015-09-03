class ShopToUser < ActiveRecord::Base
  belongs_to :shop
  belongs_to :user

  validates :shop, :user, :presence=>true
end
