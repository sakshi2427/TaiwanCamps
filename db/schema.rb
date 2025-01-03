# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_11_01_143015) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "campsites", force: :cascade do |t|
    t.text "name"
    t.text "category"
    t.text "description"
    t.text "address"
    t.text "county"
    t.text "postal_code"
    t.text "area"
    t.text "website"
    t.text "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.timestamptz "deleted_at"
    t.bigint "user_id"
    t.index ["deleted_at"], name: "idx_campsites_deleted_at"
    t.index ["user_id"], name: "index_campsites_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "content", null: false
    t.bigint "rating"
    t.bigint "campsite_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.timestamptz "deleted_at"
    t.index ["campsite_id"], name: "index_reviews_on_campsite_id"
    t.index ["deleted_at"], name: "idx_reviews_deleted_at"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "email", default: ""
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "first_name"
    t.text "last_name"
    t.string "avatar"
    t.timestamptz "deleted_at"
    t.text "password"
    t.index ["deleted_at"], name: "idx_users_deleted_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "campsites", "users"
  add_foreign_key "reviews", "campsites"
  add_foreign_key "reviews", "users"
end
