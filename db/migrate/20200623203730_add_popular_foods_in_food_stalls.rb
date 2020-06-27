class AddPopularFoodsInFoodStalls < ActiveRecord::Migration[6.0]
  def change
    add_column :food_stalls, :popular_foods, :text
  end
end
