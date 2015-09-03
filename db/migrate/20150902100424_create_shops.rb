class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name, :null=>false
      t.string :subdomain, :null=>false
      t.string :database, :null=>false

      t.timestamps null: false
    end
  end
end
