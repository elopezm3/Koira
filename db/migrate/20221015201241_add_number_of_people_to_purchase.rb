class AddNumberOfPeopleToPurchase < ActiveRecord::Migration[7.0]
  def change
    add_column :purchases, :number_of_people, :integer
  end
end
