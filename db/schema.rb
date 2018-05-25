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

ActiveRecord::Schema.define(version: 20180525174721) do

  create_table "bfcies", force: :cascade do |t|
    t.string   "qtum_address", limit: 255
    t.integer  "amount",       limit: 8
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "bfcies", ["qtum_address"], name: "index_bfcies_on_qtum_address", using: :btree

  create_table "claims", force: :cascade do |t|
    t.string   "email",        limit: 255
    t.string   "qtum_address", limit: 255
    t.string   "message",      limit: 255
    t.string   "signature",    limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "claims", ["qtum_address"], name: "index_claims_on_qtum_address", using: :btree

  create_table "jobs", force: :cascade do |t|
    t.integer  "bfcy_id",      limit: 4
    t.integer  "claim_id",     limit: 4
    t.integer  "status",       limit: 4, default: 0
    t.integer  "tx_id",        limit: 4
    t.datetime "submitted_at"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  add_index "jobs", ["bfcy_id"], name: "index_jobs_on_bfcy_id", using: :btree
  add_index "jobs", ["claim_id"], name: "index_jobs_on_claim_id", using: :btree
  add_index "jobs", ["status"], name: "index_jobs_on_status", using: :btree
  add_index "jobs", ["tx_id"], name: "index_jobs_on_tx_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "name",                   limit: 255
    t.integer  "role",                   limit: 4
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
