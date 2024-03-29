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

ActiveRecord::Schema.define(version: 20140126033501) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cards", force: true do |t|
    t.string   "format"
    t.string   "difficulty"
    t.string   "prompt"
    t.string   "correct_answer"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "fact_id"
  end

  create_table "decks", force: true do |t|
    t.float    "stage"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "path_id"
    t.integer  "user_id"
    t.string   "title"
    t.boolean  "active"
  end

  create_table "enrollments", force: true do |t|
    t.integer  "user_id"
    t.integer  "path_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "enrollments", ["path_id"], name: "index_enrollments_on_path_id", using: :btree
  add_index "enrollments", ["user_id"], name: "index_enrollments_on_user_id", using: :btree

  create_table "facts", force: true do |t|
    t.string   "term"
    t.text     "definition"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "deck_id"
  end

  create_table "known_facts", force: true do |t|
    t.datetime "last_seen"
    t.float    "decaying_mastery_score"
    t.integer  "user_id"
    t.integer  "fact_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "last_mastery_score"
    t.integer  "times_seen"
  end

  add_index "known_facts", ["fact_id"], name: "index_known_facts_on_fact_id", using: :btree
  add_index "known_facts", ["user_id"], name: "index_known_facts_on_user_id", using: :btree

  create_table "pages", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "paths", force: true do |t|
    t.string   "subject"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "provider"
    t.string   "uid"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
