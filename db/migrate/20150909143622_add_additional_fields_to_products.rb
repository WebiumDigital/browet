class AddAdditionalFieldsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :description, :text
    add_column :products, :slug, :string, :null=> false
    add_column :products, :brand, :string
    add_column :products, :availability, :integer, :default=>0, :null=>false
    add_index :products, :slug, :unique => true
  end
end
