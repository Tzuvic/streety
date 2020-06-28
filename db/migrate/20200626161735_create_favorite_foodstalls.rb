class CreateFavoriteFoodstalls < ActiveRecord::Migration[6.0]
  def change
    create_table :favorite_foodstalls do |t|
      t.references :food_stall, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
