class AddTypeOfBusinessToBusinesses < ActiveRecord::Migration[7.0]
  def change
    add_column :businesses, :type_of_business, :string
  end
end
