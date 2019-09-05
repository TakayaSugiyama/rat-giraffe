class AddStationToRental < ActiveRecord::Migration[5.0]
  def change
    add_column :stations, :rental_id, :integer
  end
end
