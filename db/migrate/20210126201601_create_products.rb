class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.string :status
      t.string :description
      t.string :picture1
      t.string :picture2
      t.string :picture3
      t.string :picture4

      t.timestamps
    end
  end
end
