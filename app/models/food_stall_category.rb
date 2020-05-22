class FoodStallCategory < ApplicationRecord
  belongs_to :food_stall
  belongs_to :food_category
end
