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

ActiveRecord::Schema.define(version: 20150709033006) do

  create_table "encounters", force: :cascade do |t|
    t.string   "visitNumber",  null: false
    t.datetime "admittedAt",   null: false
    t.datetime "dischargedAt"
    t.string   "location"
    t.integer  "room"
    t.integer  "bed"
    t.integer  "patient_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "firstName",  null: false
    t.string "middleName"
    t.string "lastName",   null: false
    t.float  "weight"
    t.float  "height"
    t.string "mrn",        null: false
  end

  add_index "patients", ["mrn"], name: "index_patients_on_mrn", unique: true

end
