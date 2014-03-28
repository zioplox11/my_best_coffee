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

ActiveRecord::Schema.define(version: 20140328210127) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appliances", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "amazon_purchase_link"
    t.string   "wiki_link"
    t.string   "photo_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "appliances_users", force: true do |t|
    t.integer  "appliance_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ingredients", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "amazon_purchase_link"
    t.string   "wiki_link"
    t.string   "photo_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "my_best_coffees", force: true do |t|
    t.integer  "user_id"
    t.integer  "recipe_id"
    t.string   "restaurant_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipe_steps", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "prep_time"
    t.integer  "cooking_time"
    t.integer  "total_time"
    t.integer  "multi_taskability"
    t.integer  "difficulty"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipes", force: true do |t|
    t.string   "title"
    t.string   "author"
    t.integer  "prep_time"
    t.integer  "cooking_time"
    t.integer  "total_time"
    t.integer  "multi_taskability"
    t.integer  "difficulty"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "full_name"
    t.string   "email"
    t.string   "gender"
    t.integer  "age"
    t.date     "birthday"
    t.string   "photo_url"
    t.text     "description"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
