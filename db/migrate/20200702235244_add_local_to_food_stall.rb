class AddLocalToFoodStall < ActiveRecord::Migration[6.0]
  def change
    add_column :food_stalls, :local, :boolean, default: false
  end
end
