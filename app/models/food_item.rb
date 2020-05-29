class FoodItem < ApplicationRecord
  belongs_to :food_category
  belongs_to :user
  has_many :menus
  has_many :food_stalls, through: :menu
end
