class FoodCategory < ApplicationRecord
  belongs_to :food_stall_categories
  has_many :food_items
end
