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

ActiveRecord::Schema.define(version: 2021_06_23_223131) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

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

  create_table "public_speakers_talk_outlines", id: false, force: :cascade do |t|
    t.bigint "public_speaker_id", null: false
    t.bigint "public_talk_outline_id", null: false
    t.index ["public_speaker_id"], name: "index_public_speakers_talk_outlines_on_public_speaker_id"
    t.index ["public_talk_outline_id"], name: "index_public_speakers_talk_outlines_on_public_talk_outline_id"
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

  create_table "sessions", force: :cascade do |t|
    t.string "session_id", null: false
    t.text "data"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["session_id"], name: "index_sessions_on_session_id", unique: true
    t.index ["updated_at"], name: "index_sessions_on_updated_at"
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

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "congregations", "kingdom_halls"
  add_foreign_key "contact_informations", "publishers"
  add_foreign_key "public_speakers", "publishers"
  add_foreign_key "publishers", "congregations"
  add_foreign_key "publishers", "souls"
end
