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

ActiveRecord::Schema.define(version: 2020_06_03_023218) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

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
    t.float "latitude"
    t.float "longitude"
    t.index ["user_id"], name: "index_food_stalls_on_user_id"
  end

  create_table "menus", force: :cascade do |t|
    t.bigint "food_stall_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "food_item_id"
    t.index ["food_item_id"], name: "index_menus_on_food_item_id"
    t.index ["food_stall_id"], name: "index_menus_on_food_stall_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "content"
    t.integer "rating"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "food_stall_id", null: false
    t.index ["food_stall_id"], name: "index_reviews_on_food_stall_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "home_town"
    t.string "current_city"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vouches", force: :cascade do |t|
    t.text "content"
    t.bigint "voucher_id"
    t.bigint "vouchee_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["vouchee_id"], name: "index_vouches_on_vouchee_id"
    t.index ["voucher_id"], name: "index_vouches_on_voucher_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "favorites", "food_stalls"
  add_foreign_key "favorites", "users"
  add_foreign_key "food_items", "food_categories"
  add_foreign_key "food_items", "users"
  add_foreign_key "food_stalls", "users"
  add_foreign_key "menus", "food_items"
  add_foreign_key "menus", "food_stalls"
  add_foreign_key "reviews", "food_stalls"
  add_foreign_key "reviews", "users"
  add_foreign_key "vouches", "users", column: "vouchee_id"
  add_foreign_key "vouches", "users", column: "voucher_id"
end
