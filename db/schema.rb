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

ActiveRecord::Schema.define(version: 20151125174929) do

  create_table "business_cards", force: :cascade do |t|
    t.string   "name"
    t.string   "company"
    t.string   "job_title"
    t.string   "phone"
    t.string   "email"
    t.string   "company_address"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "image"
    t.string   "ocr_text"
    t.integer  "create_user_id"
    t.string   "imageuri"
    t.string   "company_website"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "fax_number"
    t.string   "work_number"
  end

  create_table "create_users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "phone_number"
    t.string   "aouth_token"
    t.datetime "oauth_expires_at"
    t.string   "provider"
  end

  create_table "oauth_registrations", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "oauth_registrations", ["user_id"], name: "index_oauth_registrations_on_user_id"

# Could not dump table "users" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

end
