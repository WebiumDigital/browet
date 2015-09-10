class AddIndexToProductsStatus < ActiveRecord::Migration
  def change
    add_index :products, :status
  end
end
