class AddBusinessTypeToBusinesses < ActiveRecord::Migration[5.0]
  def change
    add_column :businesses, :type, :string
  end
end
