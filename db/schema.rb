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

ActiveRecord::Schema.define(version: 20190904145240) do

  create_table "rentals", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "price",      null: false
    t.string   "address",    null: false
    t.integer  "years",      null: false
    t.text     "note",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stations", force: :cascade do |t|
    t.string   "route_name",   null: false
    t.string   "station_name", null: false
    t.integer  "walk_times",   null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "rental_id"
    t.index ["rental_id"], name: "index_stations_on_rental_id"
  end

end
