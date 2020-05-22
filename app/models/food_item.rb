class FoodItem < ApplicationRecord
  belongs_to :food_category
  belongs_to :user
end
