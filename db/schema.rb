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

ActiveRecord::Schema.define(version: 2020_08_24_234930) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "listings", force: :cascade do |t|
    t.bigint "user_id"
    t.string "first_name"
    t.string "last_name"
    t.string "street_name"
    t.string "city"
    t.string "state"
    t.integer "zip_code"
    t.string "description"
    t.boolean "pet_friendly"
    t.string "pet_size"
    t.string "contact_number"
    t.boolean "rent"
    t.integer "monthly_price"
    t.boolean "buy"
    t.integer "purchase_price"
    t.boolean "sold"
    t.integer "bedrooms"
    t.integer "half_bathrooms"
    t.integer "full_bathrooms"
    t.boolean "smoker"
    t.string "type_of_house"
    t.integer "sq_foot"
    t.string "image"
    t.string "image_2"
    t.string "nearest_elementary"
    t.string "nearest_middle"
    t.string "nearest_high"
    t.integer "likes"
    t.integer "year_built"
    t.boolean "parking"
    t.boolean "heating"
    t.boolean "cooling"
    t.boolean "hoa"
    t.boolean "garage"
    t.string "condition"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_listings_on_user_id"
  end

  create_table "offers", force: :cascade do |t|
    t.integer "user_id"
    t.integer "listing_id"
    t.integer "offer_price"
    t.integer "money_down"
    t.boolean "loan_app"
    t.string "first_name"
    t.string "last_name"
    t.string "phone_num"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.string "image"
    t.string "description"
    t.integer "up_votes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
