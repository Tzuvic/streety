class AddNameToFoodStallCategory < ActiveRecord::Migration[6.0]
  def change
    add_column :food_stall_categories, :name, :string
  end
end
