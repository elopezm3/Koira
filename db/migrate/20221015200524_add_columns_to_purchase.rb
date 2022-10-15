class AddColumnsToPurchase < ActiveRecord::Migration[7.0]
  def change
    add_column :purchases, :user_name, :string
    add_column :purchases, :phone, :string
    add_column :purchases, :date, :date
    add_column :purchases, :time, :time
    add_column :purchases, :comments, :text
  end
end
