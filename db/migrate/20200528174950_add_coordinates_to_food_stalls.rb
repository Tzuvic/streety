class AddCoordinatesToFoodStalls < ActiveRecord::Migration[6.0]
  def change
    add_column :food_stalls, :latitude, :float
    add_column :food_stalls, :longitude, :float
  end
end
