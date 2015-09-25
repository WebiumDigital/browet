class CreateCollectionToCategories < ActiveRecord::Migration
  def change
    create_table :collection_to_categories do |t|
      t.references :collection, index: true, :null=>false
      t.references :category, index: true, :null=>false

      t.timestamps null: false
    end
  end
end
