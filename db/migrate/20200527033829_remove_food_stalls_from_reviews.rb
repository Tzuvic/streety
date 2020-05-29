class RemoveFoodStallsFromReviews < ActiveRecord::Migration[6.0]
  def change
    remove_reference :reviews, :food_stalls
  end
end
