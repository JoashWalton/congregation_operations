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

ActiveRecord::Schema.define(version: 2020_12_24_184848) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "congregations", force: :cascade do |t|
    t.string "congregation_name"
    t.string "congregation_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "kingdom_hall_id", null: false
    t.index ["kingdom_hall_id"], name: "index_congregations_on_kingdom_hall_id"
  end

  create_table "contact_informations", force: :cascade do |t|
    t.string "personal_email"
    t.string "branch_email"
    t.string "mobile_phone_number"
    t.string "home_phone_number"
    t.string "mailing_address"
    t.string "mailing_city"
    t.string "mailing_state"
    t.string "mailing_zip_code"
    t.string "country"
    t.string "apartment"
    t.string "post_office_box_number"
    t.string "post_office_box_city"
    t.string "post_office_box_state"
    t.string "post_office_box_zip_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "publisher_id", null: false
    t.index ["publisher_id"], name: "index_contact_informations_on_publisher_id"
  end

  create_table "kingdom_halls", force: :cascade do |t|
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.string "country"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "public_speakers", force: :cascade do |t|
    t.boolean "approved_for_outgoing_talks"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "publisher_id", null: false
    t.index ["publisher_id"], name: "index_public_speakers_on_publisher_id"
  end

  create_table "public_talk_outlines", force: :cascade do |t|
    t.string "outline_name"
    t.integer "outline_number"
    t.text "outline_note"
    t.date "outline_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "publishers", force: :cascade do |t|
    t.boolean "unbaptized"
    t.date "unbaptized_date"
    t.boolean "baptized"
    t.date "baptism_date"
    t.boolean "other_sheep"
    t.boolean "anointed"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "soul_id", null: false
    t.bigint "congregation_id", null: false
    t.index ["congregation_id"], name: "index_publishers_on_congregation_id"
    t.index ["soul_id"], name: "index_publishers_on_soul_id"
  end

  create_table "souls", force: :cascade do |t|
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.string "gender"
    t.date "birth_date"
    t.date "death_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "congregations", "kingdom_halls"
  add_foreign_key "contact_informations", "publishers"
  add_foreign_key "public_speakers", "publishers"
  add_foreign_key "publishers", "congregations"
  add_foreign_key "publishers", "souls"
end
