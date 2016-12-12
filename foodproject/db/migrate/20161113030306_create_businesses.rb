class CreateBusinesses < ActiveRecord::Migration[5.0]
  def change
    create_table :businesses do |t|
      t.string :orgType
      t.string :name
      t.string :type
      t.string :addLine1
      t.string :addLine2
      t.string :addCity
      t.string :addState
      t.integer :addZip
      t.integer :phone
      t.string :website
      t.string :email1
      t.string :email2

      t.timestamps
    end
  end
end
