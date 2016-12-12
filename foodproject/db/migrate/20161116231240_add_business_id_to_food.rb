class AddBusinessIdToFood < ActiveRecord::Migration[5.0]
  def change
  	add_column :foods, :business_id, :integer
  end
end
