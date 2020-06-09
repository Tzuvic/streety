class AddPopularFoodsToFoodStalls < ActiveRecord::Migration[6.0]
  def change
    add_column :food_stalls, :popular_foods, :string
  end
end
