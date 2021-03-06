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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120715172048) do

  create_table "branches", :force => true do |t|
    t.string   "name"
    t.string   "state"
    t.string   "email"
    t.integer  "organization_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "zip"
    t.text     "address_line1"
    t.text     "address_line2"
    t.string   "city"
  end

  create_table "contracts", :force => true do |t|
    t.date     "start_date"
    t.integer  "duration"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "organization_id"
    t.date     "end_date"
  end

  create_table "organizations", :force => true do |t|
    t.string   "name"
    t.string   "organization_type"
    t.string   "state"
    t.integer  "unused_claim_store_days"
    t.string   "email"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.text     "address_line1"
    t.text     "address_line2"
    t.string   "city"
    t.integer  "zip"
    t.text     "accepted_threshold"
    t.string   "search_engine"
    t.boolean  "service_bureau"
    t.string   "account_type"
    t.boolean  "active"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
