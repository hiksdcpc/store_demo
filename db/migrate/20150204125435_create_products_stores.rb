class CreateProductsStores < ActiveRecord::Migration
  def change
    create_table :products_stores do |t|
      t.integer :product_id
      t.integer :store_id

      t.timestamps null: false
    end
  end
end
