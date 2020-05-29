class RemoveFoodStallCategoriesFromFoodCategories < ActiveRecord::Migration[6.0]
  def change
    remove_reference :menu, :food_category
  end
end
