class FoodStall < ApplicationRecord
  belongs_to :user
  has_many :food_stall_categories
  has_one_attached :photo

  include PgSearch::Model
    pg_search_scope :search_by_food_type,
      against: [ :food_type ],
      using: {
        tsearch: { prefix: true }
      }
end
