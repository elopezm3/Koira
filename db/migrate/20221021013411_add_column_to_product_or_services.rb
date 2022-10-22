class AddColumnToProductOrServices < ActiveRecord::Migration[7.0]
  def change
    add_column :product_or_services, :type_of_product, :string
  end
end
