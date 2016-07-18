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

ActiveRecord::Schema.define(version: 20160716025337) do

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

  create_table "comments", force: :cascade do |t|
    t.integer  "booking_id"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_comments_on_booking_id", using: :btree
  end

  create_table "requested_services", force: :cascade do |t|
    t.integer  "booking_id"
    t.integer  "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_requested_services_on_booking_id", using: :btree
    t.index ["service_id"], name: "index_requested_services_on_service_id", using: :btree
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
