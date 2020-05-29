class AddFoodStallToReviews < ActiveRecord::Migration[6.0]
  def change
    add_reference :reviews, :food_stall, null: false, foreign_key: true
  end
end
