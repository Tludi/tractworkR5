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

ActiveRecord::Schema.define(version: 2019_04_26_181636) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "account_associations", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_account_associations_on_project_id"
    t.index ["user_id"], name: "index_account_associations_on_user_id"
  end

  create_table "accounts", force: :cascade do |t|
    t.string "name"
    t.string "time_zone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "csi_divisions", force: :cascade do |t|
    t.string "divnum"
    t.string "divtitle"
    t.string "groupname"
    t.string "subgroupname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "materials", force: :cascade do |t|
    t.string "divnum"
    t.string "divname"
    t.string "description"
    t.string "defmeasure"
    t.decimal "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.string "address1"
    t.string "address2"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.integer "contact_id"
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "time_punches", force: :cascade do |t|
    t.datetime "punch"
    t.integer "work_segment_id"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "firstName"
    t.string "lastName"
    t.string "role"
    t.string "email", null: false
    t.string "crypted_password"
    t.string "salt"
    t.integer "pin"
    t.string "address1"
    t.string "address2"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.string "phone"
    t.string "personal_contact"
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.string "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["remember_me_token"], name: "index_users_on_remember_me_token"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token"
  end

  create_table "work_segments", force: :cascade do |t|
    t.boolean "status"
    t.integer "workday_id"
    t.string "task"
    t.integer "project_id"
    t.decimal "timeEntry"
    t.string "segmentNotes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workdays", force: :cascade do |t|
    t.decimal "totalHoursWorked"
    t.date "dayDate"
    t.integer "user_id"
    t.text "workDayNotes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
