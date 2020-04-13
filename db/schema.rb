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

ActiveRecord::Schema.define(version: 2020_04_13_221109) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "group_options", force: :cascade do |t|
    t.string "name"
    t.string "required"
  end

  create_table "item_group_options", force: :cascade do |t|
    t.bigint "item_id", null: false
    t.bigint "group_option_id", null: false
    t.index ["group_option_id"], name: "index_item_group_options_on_group_option_id"
    t.index ["item_id"], name: "index_item_group_options_on_item_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.float "price"
    t.bigint "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_items_on_category_id"
  end

  create_table "options", force: :cascade do |t|
    t.string "name"
    t.string "input_type"
    t.float "price"
    t.bigint "group_option_id", null: false
    t.index ["group_option_id"], name: "index_options_on_group_option_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "customer"
    t.string "address"
    t.string "email"
    t.string "phone"
    t.text "items"
    t.float "amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "password_digest"
    t.string "email"
    t.string "phone"
    t.boolean "admin", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "item_group_options", "group_options"
  add_foreign_key "item_group_options", "items"
  add_foreign_key "items", "categories"
  add_foreign_key "options", "group_options"
end
