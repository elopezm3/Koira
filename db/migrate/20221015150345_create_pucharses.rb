class CreatePucharses < ActiveRecord::Migration[7.0]
  def change
    create_table :purchases do |t|
      t.references :buyer, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
