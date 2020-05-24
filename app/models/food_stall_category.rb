class FoodStallCategory < ApplicationRecord
  belongs_to :food_stall
  has_many :food_categories
  has_many :food_stalls
  belongs_to :food_category
end
