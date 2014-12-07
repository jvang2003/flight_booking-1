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

ActiveRecord::Schema.define(version: 20141207180055) do

  create_table "airports", force: true do |t|
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "flights", force: true do |t|
    t.datetime "date"
    t.integer  "flight_duration"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "start_airport_id"
    t.integer  "finish_airport_id"
  end

  add_index "flights", ["finish_airport_id"], name: "index_flights_on_finish_airport_id"
  add_index "flights", ["start_airport_id"], name: "index_flights_on_start_airport_id"

end
