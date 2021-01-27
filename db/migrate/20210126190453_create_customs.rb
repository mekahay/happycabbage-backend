class CreateCustoms < ActiveRecord::Migration[6.1]
  def change
    create_table :customs do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :subject
      t.string :message
      t.decimal :price_range
      t.date :delivery_date

      t.timestamps
    end
  end
end
