class AddMenuReferenceToFoodItems < ActiveRecord::Migration[6.0]
  def change
    add_reference :menus, :food_item, foreign_key: true
  end
end
