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

ActiveRecord::Schema.define(version: 20160710212137) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.integer  "cyclist_id"
    t.integer  "mechanic_id"
    t.text     "description"
    t.string   "status"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["cyclist_id"], name: "index_bookings_on_cyclist_id", using: :btree
    t.index ["mechanic_id"], name: "index_bookings_on_mechanic_id", using: :btree
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "type"
    t.integer  "cyclist_id"
    t.integer  "mechanic_id"
    t.integer  "rating"
    t.boolean  "service_expected"
    t.boolean  "price_expected"
    t.boolean  "did_pay"
    t.text     "comments"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["cyclist_id"], name: "index_reviews_on_cyclist_id", using: :btree
    t.index ["mechanic_id"], name: "index_reviews_on_mechanic_id", using: :btree
  end

  create_table "services", force: :cascade do |t|
    t.integer  "mechanic_id"
    t.string   "service_name"
    t.integer  "service_price"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["mechanic_id"], name: "index_services_on_mechanic_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "type"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "photo"
    t.string   "email"
    t.string   "password_digest"
    t.text     "bio"
    t.integer  "avg_rating"
    t.string   "street_address"
    t.string   "city"
    t.string   "postal_code"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
