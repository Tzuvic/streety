class ChangeNameFromTextToStringInFoodStands < ActiveRecord::Migration[6.0]
  def change
    change_column :food_stalls, :name, :string
  end
end
