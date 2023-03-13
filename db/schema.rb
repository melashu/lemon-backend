# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_03_13_123953) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "model"
    t.float "price"
    t.bigint "useraccount_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["useraccount_id"], name: "index_items_on_useraccount_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "country"
    t.string "city"
    t.string "phone"
    t.text "about"
    t.string "linkedin"
    t.string "facebook"
    t.string "twitter"
    t.string "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "useraccount_id"
    t.index ["useraccount_id"], name: "index_profiles_on_useraccount_id"
  end

  create_table "useraccounts", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "password_digist"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
  end

  add_foreign_key "items", "useraccounts"
end
