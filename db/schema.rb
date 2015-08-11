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

ActiveRecord::Schema.define(version: 20150804171723) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "parent_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "manufacturer"
    t.string   "model"
    t.float    "weight"
    t.float    "height"
    t.float    "width"
    t.float    "length"
    t.float    "price"
    t.text     "description"
    t.integer  "year"
    t.integer  "category_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "products", ["category_id"], name: "index_products_on_category_id", using: :btree

  create_table "products_providers", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "provider_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "products_providers", ["product_id"], name: "index_products_providers_on_product_id", using: :btree
  add_index "products_providers", ["provider_id"], name: "index_products_providers_on_provider_id", using: :btree

  create_table "providers", force: :cascade do |t|
    t.string   "comapany_name"
    t.string   "phone"
    t.text     "address"
    t.text     "description"
    t.text     "comment"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    #t.string   "email"
    t.string   "password"
    t.string   "phone"
    t.text     "mailing_address"
    t.text     "shipping_address"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_foreign_key "products", "categories"
  add_foreign_key "products_providers", "products"
  add_foreign_key "products_providers", "providers"
end
