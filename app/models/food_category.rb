class FoodCategory < ApplicationRecord
  has_many :food_stall_categories
  has_many :food_items
end
