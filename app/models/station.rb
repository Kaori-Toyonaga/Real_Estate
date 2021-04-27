class Station < ApplicationRecord
  has_many :nearest_stations, dependent: :destroy
  has_many :nearest_station_houses, through: :nearest_stations, source: :house
end
