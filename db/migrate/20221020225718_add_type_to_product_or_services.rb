class AddTypeToProductOrServices < ActiveRecord::Migration[7.0]
  def change
    add_column :product_or_services, :type_product_service, :string
  end
end
