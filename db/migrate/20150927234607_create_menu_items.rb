class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.references :menu, index: true, :null=>false
      t.integer :item_id, :null=>false
      t.string :item_type, :null=>false

      t.timestamps null: false
    end
  end
end
