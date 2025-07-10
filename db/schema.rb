# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2025_07_10_065739) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ama1s", force: :cascade do |t|
    t.string "a"
    t.string "b"
    t.string "c"
    t.string "d"
    t.string "e"
    t.string "f"
    t.string "g"
    t.string "h"
    t.string "i"
    t.string "j"
    t.string "k"
    t.string "l"
    t.string "m"
    t.string "n"
    t.string "o"
    t.string "p"
    t.string "q"
    t.string "r"
    t.string "s"
    t.string "t"
    t.string "u"
    t.string "v"
    t.string "w"
    t.string "x"
    t.string "y"
    t.string "z"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "ama2s", force: :cascade do |t|
    t.string "a"
    t.string "b"
    t.string "c"
    t.string "d"
    t.string "e"
    t.string "f"
    t.string "g"
    t.string "h"
    t.string "i"
    t.string "j"
    t.string "k"
    t.string "l"
    t.string "m"
    t.string "n"
    t.string "o"
    t.string "p"
    t.string "q"
    t.string "r"
    t.string "s"
    t.string "t"
    t.string "u"
    t.string "v"
    t.string "w"
    t.string "x"
    t.string "y"
    t.string "z"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "care_yous", force: :cascade do |t|
    t.string "name"
    t.string "a1"
    t.string "b1"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "c1"
    t.string "d1"
    t.string "e1"
    t.string "f1"
    t.string "g1"
    t.string "h1"
    t.string "i1"
    t.string "j1"
    t.string "k1"
  end

  create_table "careyouallls", force: :cascade do |t|
    t.string "a"
    t.string "b"
    t.string "c"
    t.string "d"
    t.string "e"
    t.string "f"
    t.string "g"
    t.string "h"
    t.string "i"
    t.string "j"
    t.string "k"
    t.string "l"
    t.string "m"
    t.string "n"
    t.string "o"
    t.string "p"
    t.string "q"
    t.string "r"
    t.string "s"
    t.string "t"
    t.string "u"
    t.string "v"
    t.string "w"
    t.string "x"
    t.string "y"
    t.string "z"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "careyoualls", force: :cascade do |t|
    t.string "name"
    t.string "a1"
    t.string "b1"
    t.string "c1"
    t.string "d1"
    t.string "e1"
    t.string "f1"
    t.string "g1"
    t.string "h1"
    t.string "i1"
    t.string "j1"
    t.string "k1"
    t.string "l1"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "cies", force: :cascade do |t|
    t.string "a"
    t.string "b"
    t.string "c"
    t.string "d"
    t.string "e"
    t.string "f"
    t.string "g"
    t.string "h"
    t.string "i"
    t.string "j"
    t.string "k"
    t.string "l"
    t.string "m"
    t.string "n"
    t.string "o"
    t.string "p"
    t.string "q"
    t.string "r"
    t.string "s"
    t.string "t"
    t.string "u"
    t.string "v"
    t.string "w"
    t.string "x"
    t.string "y"
    t.string "z"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "event_records", force: :cascade do |t|
    t.string "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_records_on_event_id"
  end

  create_table "push_messages", force: :cascade do |t|
    t.string "a"
    t.string "b"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

end
