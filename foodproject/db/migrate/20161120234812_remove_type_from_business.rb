class RemoveTypeFromBusiness < ActiveRecord::Migration[5.0]
  def change
    remove_column :businesses, :type
  end
end
