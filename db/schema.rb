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

ActiveRecord::Schema.define(version: 20180310104703) do

  create_table "accounts", force: :cascade do |t|
    t.integer  "supplier_id",    limit: 4
    t.string   "account_number", limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "accounts", ["supplier_id"], name: "index_accounts_on_supplier_id", using: :btree

  create_table "appointments", force: :cascade do |t|
    t.integer  "physician_id",     limit: 4
    t.integer  "patient_id",       limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "appointment_date", limit: 255
  end

  add_index "appointments", ["patient_id"], name: "index_appointments_on_patient_id", using: :btree
  add_index "appointments", ["physician_id"], name: "index_appointments_on_physician_id", using: :btree

  create_table "articles", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.text     "comment",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "authors", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "books", force: :cascade do |t|
    t.integer  "author_id",    limit: 4
    t.datetime "published_at"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "books", ["author_id"], name: "index_books_on_author_id", using: :btree

  create_table "comments", force: :cascade do |t|
    t.string   "commentable_type", limit: 255
    t.integer  "commentable_id",   limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "news", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.text     "comment",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "physicians", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "accounts", "suppliers"
  add_foreign_key "appointments", "patients"
  add_foreign_key "appointments", "physicians"
  add_foreign_key "books", "authors"
end
