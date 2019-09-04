class CreateRentals < ActiveRecord::Migration[5.0]
  def change
    create_table :rentals do |t|
      t.string :name,null: false
      t.integer :price,null: false
      t.string :address,null: false
      t.integer :years,null: false
      t.text :note,null: false

      t.timestamps
    end
  end
end
