class CreateProductcategories < ActiveRecord::Migration[6.1]
  def change
    create_table :productcategories do |t|
      t.integer :product_id
      t.integer :category_id

      t.timestamps
    end
  end
end
