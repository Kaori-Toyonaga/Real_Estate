class CreateStations < ActiveRecord::Migration[5.2]
  def change
    create_table :stations do |t|
      t.string :route1
      t.string :route2
      t.string :route3
      t.string :route4
      t.string :route5
      t.string :station1
      t.string :station2
      t.string :station3
      t.string :station4
      t.string :station5
      t.integer :minute1
      t.integer :minute2
      t.integer :minute3
      t.integer :minute4
      t.integer :minute5

      t.timestamps
    end
  end
end
