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

ActiveRecord::Schema.define(version: 20140331135903) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appliances", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "section"
    t.string   "amazon_purchase_link"
    t.string   "wiki_link"
    t.string   "photo_url"
    t.decimal  "rating_self",          precision: 2, scale: 1, default: 0.0
    t.decimal  "rating_all_users",     precision: 2, scale: 1, default: 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "appliances_steps", id: false, force: true do |t|
    t.integer "appliance_id"
    t.integer "step_id"
  end

  create_table "commentables", force: true do |t|
  end

  create_table "comments", force: true do |t|
    t.text    "description"
    t.integer "recipe_id"
    t.integer "user_id"
  end

  create_table "ingredients", force: true do |t|
    t.string   "name"
    t.string   "section"
    t.text     "description"
    t.boolean  "is_bean"
    t.string   "amazon_purchase_link"
    t.string   "wiki_link"
    t.string   "photo_url"
    t.boolean  "is_fair_trade"
    t.boolean  "is_organically_grown"
    t.string   "grind"
    t.string   "roast"
    t.string   "origin"
    t.integer  "aroma"
    t.integer  "acidity"
    t.integer  "body"
    t.integer  "flavor"
    t.integer  "aftertaste"
    t.decimal  "rating_self",          precision: 2, scale: 1, default: 0.0
    t.decimal  "rating_all_users",     precision: 2, scale: 1, default: 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ingredients_steps", id: false, force: true do |t|
    t.integer "step_id"
    t.integer "ingredient_id"
  end

  create_table "inventories", id: false, force: true do |t|
    t.integer  "appliance_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mybestcoffees", force: true do |t|
    t.integer  "user_id"
    t.integer  "recipe_id"
    t.string   "restaurant_url"
    t.decimal  "rating_self",      precision: 2, scale: 1, default: 0.0
    t.decimal  "rating_all_users", precision: 2, scale: 1, default: 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipes", force: true do |t|
    t.string   "title"
    t.integer  "user_id"
    t.string   "author",                                    default: "No author attributed"
    t.string   "source_url"
    t.string   "photo_url"
    t.text     "description",                               default: "No description given"
    t.boolean  "is_iced"
    t.integer  "servings"
    t.decimal  "rating_self",       precision: 2, scale: 1, default: 0.0
    t.decimal  "rating_all_users",  precision: 2, scale: 1, default: 0.0
    t.integer  "prep_time"
    t.integer  "cooking_time"
    t.integer  "total_time"
    t.decimal  "multi_taskability", precision: 2, scale: 1, default: 0.0
    t.decimal  "difficulty",        precision: 2, scale: 1, default: 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "steps", force: true do |t|
    t.string   "name"
    t.text     "description",       default: "No description provided"
    t.integer  "recipe_id"
    t.integer  "prep_time"
    t.integer  "cooking_time"
    t.integer  "total_time"
    t.integer  "multi_taskability", default: 0
    t.integer  "difficulty",        default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name",            default: "No name given"
    t.string   "full_name"
    t.string   "email"
    t.integer  "admin_status",    default: 0
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
