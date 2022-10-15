class RemoveDateFromPurchaseItem < ActiveRecord::Migration[7.0]
  def change
    remove_column :purchase_items, :date, :date
  end
end
