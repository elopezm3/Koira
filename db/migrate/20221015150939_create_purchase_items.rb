class CreatePurchaseItems < ActiveRecord::Migration[7.0]
  def change
    create_table :purchase_items do |t|
      t.references :purchase, null: false, foreign_key: true
      t.references :product_or_service, null: false, foreign_key: true
      t.date :date

      t.timestamps
    end
  end
end
