class CreateFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :foods do |t|
      t.string :fooditem
      t.string :foodtype
      t.date :expiration
      t.datetime :pickupstart
      t.datetime :pickupend
      t.text :specialnote

      t.timestamps
    end
  end
end
