class CreateLinkLists < ActiveRecord::Migration
  def change
    create_table :link_lists do |t|
      t.string :name, :null=>false
      t.string :slug, :null=>false

      t.timestamps null: false
    end
    add_index :link_lists, :slug, :unique => true
  end
end
