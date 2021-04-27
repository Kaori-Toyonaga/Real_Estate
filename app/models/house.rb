class House < ApplicationRecord
  with_options presence: true do
    validates :title
    validates :address
    validates :age
  end

  has_many :nearest_stations, dependent: :destroy
end
