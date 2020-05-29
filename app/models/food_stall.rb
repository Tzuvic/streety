class FoodStall < ApplicationRecord
  belongs_to :user
  has_many :food_stall_categories
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
    pg_search_scope :search_by_food_type,
      against: [ :food_type ],
      using: {
        tsearch: { prefix: true }
      }
end
