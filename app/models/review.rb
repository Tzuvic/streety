class Review < ApplicationRecord
  belongs_to :user
  belongs_to :food_stall
  validates :content, presence: true
  validates :rating, presence: true
end
