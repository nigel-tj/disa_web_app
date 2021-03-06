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

ActiveRecord::Schema.define(version: 20180203232902) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "conditions", force: :cascade do |t|
    t.integer "disease_id"
    t.string "gender"
    t.integer "age"
    t.float "latitude"
    t.float "longitude"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "area"
    t.string "comment"
  end

  create_table "diagnosed_patients", force: :cascade do |t|
    t.string "gender"
    t.integer "age"
    t.float "latitude"
    t.float "longitude"
    t.string "status"
    t.integer "disease_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "area"
    t.index ["disease_id"], name: "index_diagnosed_patients_on_disease_id"
  end

  create_table "diseases", force: :cascade do |t|
    t.string "name"
    t.string "disease_type"
    t.string "disease_category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
