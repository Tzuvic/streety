class FoodStall < ApplicationRecord
  belongs_to :user
  has_many :menus
  has_many :food_items, through: :menus
  has_many :reviews, dependent: :destroy

  include PgSearch::Model
    pg_search_scope :search_by_food_type,
      against: [ :food_type ],
      using: {
        tsearch: { prefix: true }
      }
end
