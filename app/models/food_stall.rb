class FoodStall < ApplicationRecord
  serialize :popular_foods
  belongs_to :user
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :menus
  has_many :food_items, through: :menus
  # has_many :users, through: :favorite_foodstall
  has_many :reviews, dependent: :destroy
  has_many_attached :photos


  include PgSearch::Model
    pg_search_scope :search_by_food_type,
      against: [ :food_type ],
      using: {
        tsearch: { prefix: true }
      }

  def reviewed_by_local?
    reviews.any?(&:created_by_local?)
  end
end
