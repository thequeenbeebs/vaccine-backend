# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_22_223323) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.integer "patient_id"
    t.integer "vaccination_center_id"
    t.integer "vaccine_id"
    t.datetime "appointment_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "doses", force: :cascade do |t|
    t.integer "vaccination_center_id"
    t.integer "vaccine_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "vaccination_centers", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone_number"
    t.text "days_open", default: [], array: true
    t.integer "opening_hour"
    t.integer "closing_hour"
    t.integer "appointments_per_hour"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "city"
    t.string "state"
    t.string "zip_code"
  end

  create_table "vaccines", force: :cascade do |t|
    t.string "name"
    t.integer "doses_required"
    t.integer "weeks_between_doses"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
