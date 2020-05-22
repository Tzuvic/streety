# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_20_031031) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favorites", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "food_stall_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["food_stall_id"], name: "index_favorites_on_food_stall_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "food_categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "food_items", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "image_url"
    t.bigint "food_category_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["food_category_id"], name: "index_food_items_on_food_category_id"
    t.index ["user_id"], name: "index_food_items_on_user_id"
  end

  create_table "food_stall_categories", force: :cascade do |t|
    t.bigint "food_stall_id", null: false
    t.bigint "food_category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["food_category_id"], name: "index_food_stall_categories_on_food_category_id"
    t.index ["food_stall_id"], name: "index_food_stall_categories_on_food_stall_id"
  end

  create_table "food_stalls", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.text "description"
    t.string "food_type"
    t.string "schedule"
    t.boolean "vegetarian", default: false
    t.string "address"
    t.string "phone_number"
    t.integer "rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_food_stalls_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "favorites", "food_stalls"
  add_foreign_key "favorites", "users"
  add_foreign_key "food_items", "food_categories"
  add_foreign_key "food_items", "users"
  add_foreign_key "food_stall_categories", "food_categories"
  add_foreign_key "food_stall_categories", "food_stalls"
  add_foreign_key "food_stalls", "users"
end
