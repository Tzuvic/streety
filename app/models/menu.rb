class Menu < ApplicationRecord
  belongs_to :food_stall
  belongs_to :food_item
end
