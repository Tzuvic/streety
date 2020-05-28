class Menu < ApplicationRecord
  has_one :food_stall
  has_many :food_items
end
