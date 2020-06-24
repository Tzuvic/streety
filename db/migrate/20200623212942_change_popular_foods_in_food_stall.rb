class ChangePopularFoodsInFoodStall < ActiveRecord::Migration[6.0]
  def change
    remove_column :food_stalls, :popular_foods, :text
  end
end
