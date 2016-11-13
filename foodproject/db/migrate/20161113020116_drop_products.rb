class DropProducts < ActiveRecord::Migration[5.0]
  def change
  	drop_table :businesses
  end
end
