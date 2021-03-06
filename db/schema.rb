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

ActiveRecord::Schema.define(version: 2018_11_08_045146) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_trgm"
  enable_extension "plpgsql"

  create_table "chefs", force: :cascade do |t|
    t.integer "delivery_range"
    t.boolean "verification", default: false
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "currently_working", default: false
    t.index ["user_id"], name: "index_chefs_on_user_id"
  end

  create_table "meal_transactions", force: :cascade do |t|
    t.bigint "meal_id"
    t.bigint "transaction_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "sale_price"
    t.index ["meal_id"], name: "index_meal_transactions_on_meal_id"
    t.index ["transaction_id"], name: "index_meal_transactions_on_transaction_id"
  end

  create_table "meals", force: :cascade do |t|
    t.string "cuisine"
    t.text "description"
    t.integer "price"
    t.integer "delivery_time"
    t.text "image", default: "http://mamadips.com/wp-content/uploads/2016/11/defimage.gif"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.bigint "chef_id"
    t.index ["chef_id"], name: "index_meals_on_chef_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.text "description"
    t.text "delivery_address"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "charge_id"
    t.index ["user_id"], name: "index_transactions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.integer "phone_number"
    t.string "address"
    t.integer "type_of_user"
    t.string "stripe_id"
    t.float "latitude", default: -33.8830555556
    t.float "longitude", default: 151.216666667
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "chefs", "users"
  add_foreign_key "meal_transactions", "meals"
  add_foreign_key "meal_transactions", "transactions"
  add_foreign_key "meals", "chefs"
  add_foreign_key "transactions", "users"
end
