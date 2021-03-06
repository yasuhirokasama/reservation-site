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

ActiveRecord::Schema.define(version: 2020_03_23_110945) do

  create_table "consultations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "first_name_kana", null: false
    t.string "last_name_kana", null: false
    t.string "cell_number"
    t.string "tel_number"
    t.string "email"
    t.date "birthday"
    t.integer "sex"
    t.integer "visit_type", null: false
    t.datetime "visit_at", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["visit_at", "visit_type"], name: "index_consultations_on_visit_at_and_visit_type"
    t.index ["visit_at"], name: "index_consultations_on_visit_at"
    t.index ["visit_type"], name: "index_consultations_on_visit_type"
  end

end
