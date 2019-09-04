class AddStationToRental < ActiveRecord::Migration[5.0]
  def change
    add_reference :stations, :rental, foreign_key: true
  end
end
