class House < ApplicationRecord
  with_options presence: true do
    validates :title
    validates :address
    validates :age
  end

  has_many :stations, dependent: :destroy, inverse_of: :house
  accepts_nested_attributes_for :stations, allow_destroy: true, reject_if: :all_blank
end
