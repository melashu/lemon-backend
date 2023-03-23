ActiveRecord::Schema[7.0].define(version: 2023_03_17_101040) do
  enable_extension "plpgsql"

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "model"
    t.float "price"
    t.bigint "useraccount_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["useraccount_id"], name: "index_items_on_useraccount_id"
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "order_date"
    t.string "status"
    t.bigint "useraccount_id", null: false
    t.bigint "item_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_orders_on_item_id"
    t.index ["useraccount_id"], name: "index_orders_on_useraccount_id"
  end

  create_table "useraccounts", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "password_digest"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.string "country"
    t.string "city"
    t.string "phone"
    t.text "about"
    t.string "linkedin"
    t.string "facebook"
    t.string "twitter"
    t.string "website"
  end

  add_foreign_key "items", "useraccounts"
  add_foreign_key "orders", "items"
  add_foreign_key "orders", "useraccounts"
end
