class ChangeRatingInFoodStalls < ActiveRecord::Migration[6.0]
  def change
    change_column :food_stalls, :rating, :integer, default: 0
  end
end
