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

ActiveRecord::Schema.define(version: 20150114045127) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "items", force: :cascade do |t|
    t.string  "title"
    t.string  "description"
    t.float   "price"
    t.integer "vendor_id"
  end

  create_table "tabs", force: :cascade do |t|
    t.integer "date_of_purchase"
    t.float   "total"
    t.integer "user_id"
    t.integer "vendor_id"
    t.text    "item_list",                        array: true
    t.boolean "paid",             default: false
  end

  create_table "user_ratings", force: :cascade do |t|
    t.integer "rating"
    t.integer "user_id"
    t.integer "vendor_id"
  end

  create_table "users", force: :cascade do |t|
    t.integer "birthday"
    t.string  "image"
    t.string  "facebook_id"
    t.float   "rating"
    t.string  "first_name"
    t.string  "last_name"
    t.text    "location_history", default: [], array: true
  end

  create_table "vendor_ratings", force: :cascade do |t|
    t.integer "rating"
    t.integer "vendor_id"
    t.integer "user_id"
  end

  create_table "vendors", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "image"
    t.float  "rating"
    t.string "street_address1"
    t.string "street_address2"
    t.string "city"
    t.string "state"
    t.string "zip"
  end

end
