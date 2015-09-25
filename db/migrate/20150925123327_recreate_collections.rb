class RecreateCollections < ActiveRecord::Migration
  def change
    drop_table :collections
    create_table :collections do |t|
      t.string :name, :null=>false
      t.string :slug, :null=>false

      t.timestamps null: false
    end
    add_index :collections, :slug, :unique => true
  end
end
