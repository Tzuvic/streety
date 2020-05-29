class Review < ApplicationRecord
  belongs_to :user
  belongs_to :food_stall
  validates :content, presence: true
end
