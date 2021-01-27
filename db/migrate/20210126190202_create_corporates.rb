class CreateCorporates < ActiveRecord::Migration[6.1]
  def change
    create_table :corporates do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :subject
      t.string :message

      t.timestamps
    end
  end
end
