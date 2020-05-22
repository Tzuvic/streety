class CreateFoodStalls < ActiveRecord::Migration[6.0]
  def change
    create_table :food_stalls do |t|
      t.references :user, null: false, foreign_key: true
      t.text :name
      t.text :description
      t.string :food_type
      t.string :schedule
      t.boolean :vegetarian, default: false
      t.string :address
      t.string :phone_number
      t.integer :rating

      t.timestamps
    end
  end
end
