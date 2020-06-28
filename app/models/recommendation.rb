class Recommendation < ApplicationRecord
  belongs_to :food_stall
  belongs_to :user
end
