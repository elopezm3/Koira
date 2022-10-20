class RemoveTypeFromBusinesses < ActiveRecord::Migration[7.0]
  def change
    remove_column :businesses, :type, :string
  end
end
