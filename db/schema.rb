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

ActiveRecord::Schema.define(version: 2021_09_24_191219) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "crew_members", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "crew_members_schedules", force: :cascade do |t|
    t.bigint "crew_member_id"
    t.bigint "schedule_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["crew_member_id"], name: "index_crew_members_schedules_on_crew_member_id"
    t.index ["schedule_id"], name: "index_crew_members_schedules_on_schedule_id"
  end

  create_table "delivery_contracts", force: :cascade do |t|
    t.integer "external_id"
    t.text "item"
    t.integer "crew_size"
    t.text "destination"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.date "depart_date"
    t.date "delivery_date"
    t.bigint "delivery_contract_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["delivery_contract_id"], name: "index_schedules_on_delivery_contract_id"
  end

end
