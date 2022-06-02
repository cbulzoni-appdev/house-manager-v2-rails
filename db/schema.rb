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

ActiveRecord::Schema.define(version: 2022_06_02_155703) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "citext"
  enable_extension "plpgsql"

  create_table "appliances", force: :cascade do |t|
    t.string "category"
    t.string "appliance_type"
    t.string "make"
    t.string "model"
    t.integer "year"
    t.date "last_serviced"
    t.date "service_due"
    t.text "notes"
    t.bigint "house_id", null: false
    t.bigint "contact_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["contact_id"], name: "index_appliances_on_contact_id"
    t.index ["house_id"], name: "index_appliances_on_house_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "company_name"
    t.string "contact_name"
    t.string "contact_type"
    t.string "email"
    t.string "phone"
    t.bigint "owner_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["owner_id"], name: "index_contacts_on_owner_id"
  end

  create_table "houses", force: :cascade do |t|
    t.string "street_address"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.date "purchase_date"
    t.bigint "owner_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["owner_id"], name: "index_houses_on_owner_id"
  end

  create_table "projects", force: :cascade do |t|
    t.text "description"
    t.string "status"
    t.date "date_started"
    t.date "date_completed"
    t.text "notes"
    t.string "priority"
    t.float "estimated_cost"
    t.bigint "house_id", null: false
    t.bigint "contact_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["contact_id"], name: "index_projects_on_contact_id"
    t.index ["house_id"], name: "index_projects_on_house_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.citext "username"
    t.string "phone_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "appliances", "contacts"
  add_foreign_key "appliances", "houses"
  add_foreign_key "contacts", "users", column: "owner_id"
  add_foreign_key "houses", "users", column: "owner_id"
  add_foreign_key "projects", "contacts"
  add_foreign_key "projects", "houses"
end
