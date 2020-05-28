class RenameFoodStallCategoriesToMenu < ActiveRecord::Migration[6.0]
  def change
    rename_table :food_stall_categories, :menu
  end
end
