class AddDomainIndexToShops < ActiveRecord::Migration
  def change
    add_index :shops, :subdomain, :unique => true
  end
end
