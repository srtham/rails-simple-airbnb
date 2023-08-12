class Flat < ApplicationRecord
  GUESTSNUMBER = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

  validates :name, :address, :description, presence: true
  validates :price_per_night, numericality: true
  validates :number_of_guests, numericality: { only_integer: true, greater_than: 0 }
end
