# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150208091922) do

  create_table "contacts", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.string   "from"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "price"
    t.boolean  "is_available"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "products_stores", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "store_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stores", force: :cascade do |t|
    t.string   "name"
    t.string   "adress"
    t.string   "tel"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "user_id"
    t.integer  "votes_count", default: 0
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "tel"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "votes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "store_id"
    t.string   "ip_address", limit: 15
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "votes", ["store_id"], name: "index_votes_on_store_id"
  add_index "votes", ["user_id"], name: "index_votes_on_user_id"

  create_table "warehouses", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "store_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "warehouses", ["product_id"], name: "index_warehouses_on_product_id"
  add_index "warehouses", ["store_id"], name: "index_warehouses_on_store_id"

end
