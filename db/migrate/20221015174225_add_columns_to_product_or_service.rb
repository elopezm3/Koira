class AddColumnsToProductOrService < ActiveRecord::Migration[7.0]
  def change
    add_column :product_or_services, :name, :string
    add_column :product_or_services, :description, :text
  end
end
