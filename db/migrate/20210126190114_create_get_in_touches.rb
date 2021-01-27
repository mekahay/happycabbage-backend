class CreateGetInTouches < ActiveRecord::Migration[6.1]
  def change
    create_table :get_in_touches do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :subject
      t.string :message

      t.timestamps
    end
  end
end
