class Review < ApplicationRecord
  belongs_to :user
  belongs_to :food_stall
  validates :content, presence: true
  validates :rating, presence: true


  def created_by_local?
    user.distance_to(food_stall) < 50
  end

end
