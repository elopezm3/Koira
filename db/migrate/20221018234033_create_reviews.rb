class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.integer :calification
      t.text :comment
      t.references :purchase, null: false, foreign_key: true

      t.timestamps
    end
  end
end
