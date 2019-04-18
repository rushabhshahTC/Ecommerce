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

ActiveRecord::Schema.define(version: 2019_04_18_105226) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coupons", force: :cascade do |t|
    t.string "code"
    t.float "discount"
    t.date "end_date"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_coupons_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.decimal "price"
    t.bigint "brand_id"
    t.bigint "sub_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_products_on_brand_id"
    t.index ["sub_category_id"], name: "index_products_on_sub_category_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.text "address"
    t.string "city"
    t.date "dob"
    t.string "role"
    t.string "state"
    t.string "gender"
    t.string "phone_number"
    t.string "company_name"
    t.string "owner_name"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "seller_type"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "sub_categories", force: :cascade do |t|
    t.string "name"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_sub_categories_on_category_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "coupons", "users"
  add_foreign_key "products", "brands"
  add_foreign_key "products", "sub_categories"
  add_foreign_key "profiles", "users"
  add_foreign_key "sub_categories", "categories"
end
