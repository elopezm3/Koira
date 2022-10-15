class CreateProductOrServices < ActiveRecord::Migration[7.0]
  def change
    create_table :product_or_services do |t|
      t.references :category, null: false, foreign_key: true
      t.decimal :price
      t.references :business, null: false, foreign_key: true

      t.timestamps
    end
  end
end
