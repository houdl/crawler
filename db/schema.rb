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

ActiveRecord::Schema.define(version: 20150114060900) do

  create_table "poker_dates", force: true do |t|
    t.string   "issue"
    t.string   "poker1"
    t.string   "poker2"
    t.string   "poker3"
    t.string   "state"
    t.datetime "poker_create_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "poker_dates", ["issue"], name: "index_poker_dates_on_issue"

end
