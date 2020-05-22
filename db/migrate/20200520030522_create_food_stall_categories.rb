class CreateFoodStallCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :food_stall_categories do |t|
      t.references :food_stall, null: false, foreign_key: true
      t.references :food_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
