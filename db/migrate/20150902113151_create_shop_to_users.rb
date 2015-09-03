class CreateShopToUsers < ActiveRecord::Migration
  def change
    create_table :shop_to_users do |t|
      t.references :shop, index: true, null: false
      t.references :user, index: true, null: false

      t.timestamps null: false
    end
  end
end
