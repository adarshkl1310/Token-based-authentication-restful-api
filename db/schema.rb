# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_12_21_113500) do

  create_table "addresses", force: :cascade do |t|
    t.text "address1"
    t.text "address2"
    t.string "landmark"
    t.string "city"
    t.string "state"
    t.string "country"
    t.integer "zipcode"
    t.string "latitude"
    t.string "longitude"
  end

  create_table "branches", force: :cascade do |t|
    t.string "email"
    t.string "phone"
    t.integer "address_id"
    t.integer "manager_id"
    t.boolean "is_disabled"
    t.boolean "is_inactive"
    t.datetime "updated_at", null: false
    t.datetime "created_at", null: false
  end

  create_table "carts", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "updated_at", null: false
    t.datetime "created_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.integer "image_id"
    t.string "name"
    t.text "description"
    t.boolean "is_active"
    t.datetime "updated_at", null: false
    t.datetime "created_at", null: false
  end

  create_table "coupons", force: :cascade do |t|
    t.string "code"
    t.string "title"
    t.string "tagline"
    t.text "how_to_use"
    t.text "terms_conditions"
    t.boolean "is_all"
    t.integer "branch_id"
    t.integer "user_id"
    t.float "discount_amount"
    t.float "discount_percent"
    t.float "min_cart_value"
    t.boolean "is_active"
    t.integer "valid_count"
    t.boolean "is_referral_reward"
    t.datetime "valid_from"
    t.datetime "valid_till"
    t.datetime "updated_at", null: false
    t.datetime "created_at", null: false
  end

  create_table "cuisines", force: :cascade do |t|
    t.string "name"
  end

  create_table "discounts", force: :cascade do |t|
    t.string "title"
    t.boolean "is_active"
    t.boolean "is_all"
    t.integer "category_id"
    t.integer "item_id"
    t.float "discount"
    t.datetime "valid_from"
    t.datetime "valid_till"
    t.datetime "updated_at", null: false
    t.datetime "created_at", null: false
  end

  create_table "festive_specials", force: :cascade do |t|
    t.integer "image_id"
    t.string "name"
    t.text "description"
    t.datetime "valid_from"
    t.datetime "valid_till"
    t.boolean "is_active"
    t.datetime "updated_at", null: false
    t.datetime "created_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string "title"
    t.string "filename"
    t.string "asset_file_name"
    t.string "asset_content_type"
    t.integer "asset_file_size"
    t.datetime "asset_updated_at"
    t.datetime "updated_at", null: false
    t.datetime "created_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.integer "category_id"
    t.integer "image_id"
    t.string "short_description"
    t.text "long_description"
    t.boolean "is_active"
    t.string "preparation_time"
    t.integer "serves"
    t.integer "calorie_count"
    t.integer "meal_type_id"
    t.integer "cuisine_id"
    t.integer "spicy_level"
    t.boolean "is_new"
    t.boolean "is_bestseller"
    t.datetime "updated_at", null: false
    t.datetime "created_at", null: false
  end

  create_table "meal_types", force: :cascade do |t|
    t.integer "image_id"
    t.string "name"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "cart_id"
    t.integer "branch_id"
    t.integer "user_id"
    t.integer "delivery_address_id"
    t.string "order_status"
    t.integer "payment_mode_id"
    t.string "payment_status"
    t.float "total_amount"
    t.integer "coupon_id"
    t.string "referrel_code"
    t.integer "order_feedback_id"
    t.datetime "updated_at", null: false
    t.datetime "created_at", null: false
  end

  create_table "payment_modes", force: :cascade do |t|
    t.string "name"
  end

  create_table "settings", force: :cascade do |t|
    t.string "meta_name"
    t.text "meta_value"
  end

  create_table "staffs", force: :cascade do |t|
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.integer "phone"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.boolean "is_admin", default: false
    t.boolean "is_blocked", default: false
    t.datetime "updated_at", null: false
    t.datetime "created_at", null: false
    t.index ["email"], name: "index_staffs_on_email", unique: true
    t.index ["reset_password_token"], name: "index_staffs_on_reset_password_token", unique: true
  end

  create_table "toppings", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.integer "meal_type_id"
    t.datetime "updated_at", null: false
    t.datetime "created_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.integer "phone"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "authentication_token"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.boolean "is_blocked", default: false
    t.datetime "updated_at", null: false
    t.datetime "created_at", null: false
    t.index ["authentication_token"], name: "index_users_on_authentication_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
