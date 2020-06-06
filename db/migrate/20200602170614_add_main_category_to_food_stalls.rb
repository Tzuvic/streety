class AddMainCategoryToFoodStalls < ActiveRecord::Migration[6.0]
  def change
    add_column :food_stalls, :main_category, :string
  end
end
