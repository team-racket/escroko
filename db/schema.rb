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

ActiveRecord::Schema.define(version: 20140712152557) do

  create_table "accounts", force: true do |t|
    t.integer  "user_id"
    t.integer  "currency_id"
    t.string   "label"
    t.float    "default_amount"
    t.boolean  "default_account"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "accounts", ["currency_id"], name: "index_accounts_on_currency_id"
  add_index "accounts", ["user_id"], name: "index_accounts_on_user_id"

  create_table "categories", force: true do |t|
    t.string   "label"
    t.string   "color"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categories", ["user_id"], name: "index_categories_on_user_id"

  create_table "categories_categories", id: false, force: true do |t|
    t.integer  "category_id"
    t.integer  "parent_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categories_categories", ["category_id"], name: "index_categories_categories_on_category_id"
  add_index "categories_categories", ["parent_category_id"], name: "index_categories_categories_on_parent_category_id"

  create_table "currencies", force: true do |t|
    t.string   "label"
    t.string   "symbol"
    t.string   "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "currencies", ["label"], name: "index_currencies_on_label", unique: true

  create_table "post_recorded_transactions", force: true do |t|
    t.string   "label"
    t.float    "default_amount"
    t.text     "commentary"
    t.integer  "category_id"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "day"
    t.boolean  "to_validate"
    t.integer  "account_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "post_recorded_transactions", ["account_id"], name: "index_post_recorded_transactions_on_account_id"
  add_index "post_recorded_transactions", ["category_id"], name: "index_post_recorded_transactions_on_category_id"

  create_table "transactions", force: true do |t|
    t.integer  "account_id"
    t.integer  "category_id"
    t.integer  "post_recorded_transaction_id"
    t.text     "commentary"
    t.float    "amount"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "transactions", ["account_id"], name: "index_transactions_on_account_id"
  add_index "transactions", ["category_id"], name: "index_transactions_on_category_id"
  add_index "transactions", ["post_recorded_transaction_id"], name: "index_transactions_on_post_recorded_transaction_id"

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "currency_id"
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
  end

  add_index "users", ["currency_id"], name: "index_users_on_currency_id"
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
