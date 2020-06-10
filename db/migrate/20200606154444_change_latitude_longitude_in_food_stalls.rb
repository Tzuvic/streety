class ChangeLatitudeLongitudeInFoodStalls < ActiveRecord::Migration[6.0]
  def change
    change_column :food_stalls, :latitude, :float, optional: true
    change_column :food_stalls, :longitude, :float, optional: true
  end
end
