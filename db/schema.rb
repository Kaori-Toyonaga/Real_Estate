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

ActiveRecord::Schema.define(version: 2021_04_27_095037) do

  create_table "houses", force: :cascade do |t|
    t.string "title"
    t.integer "rent_fee"
    t.text "address"
    t.integer "age"
    t.text "remark"
  end

  create_table "nearest_stations", force: :cascade do |t|
    t.integer "station_id"
    t.integer "house_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stations", force: :cascade do |t|
    t.string "route1"
    t.string "route2"
    t.string "route3"
    t.string "route4"
    t.string "route5"
    t.string "station1"
    t.string "station2"
    t.string "station3"
    t.string "station4"
    t.string "station5"
    t.integer "minute1"
    t.integer "minute2"
    t.integer "minute3"
    t.integer "minute4"
    t.integer "minute5"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "house_id"
    t.index ["house_id"], name: "index_stations_on_house_id"
  end

end
