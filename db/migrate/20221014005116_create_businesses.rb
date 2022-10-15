class CreateBusinesses < ActiveRecord::Migration[7.0]
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude
      t.text :description

      t.timestamps
    end
  end
end
