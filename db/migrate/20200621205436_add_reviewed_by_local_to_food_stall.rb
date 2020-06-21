class AddReviewedByLocalToFoodStall < ActiveRecord::Migration[6.0]
  def change
    add_column :food_stalls, :reviewed_by_local, :boolean, default: false
  end
end
