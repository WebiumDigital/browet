class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.string :Product
      t.string :title

      t.timestamps null: false
    end
  end
end
