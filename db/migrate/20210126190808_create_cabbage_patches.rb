class CreateCabbagePatches < ActiveRecord::Migration[6.1]
  def change
    create_table :cabbage_patches do |t|
      t.date :date
      t.string :subject
      t.string :summery
      t.string :message
      t.string :picture1
      t.string :picture2
      t.string :picture3
      t.string :picture4
      t.string :picture5
      t.string :picture6
      t.string :picture7
      t.string :picture8

      t.timestamps
    end
  end
end
