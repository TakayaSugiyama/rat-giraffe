class CreateStations < ActiveRecord::Migration[5.0]
  def change
    create_table :stations do |t|
      t.string :route_name, null: false
      t.string :station_name, null: false
      t.integer :walk_times, null: false

      t.timestamps
    end
  end
end
