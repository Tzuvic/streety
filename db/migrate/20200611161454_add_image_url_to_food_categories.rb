class AddImageUrlToFoodCategories < ActiveRecord::Migration[6.0]
  def change
    add_column :food_categories, :image_url, :string
  end
end
