class CreateNearestStations < ActiveRecord::Migration[5.2]
  def change
    create_table :nearest_stations do |t|
      t.integer :station_id
      t.integer :house_id

      t.timestamps
    end
  end
end
