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

ActiveRecord::Schema.define(version: 20180123080704) do

  create_table "alumni", force: :cascade do |t|
    t.integer "roll_no"
    t.string "name"
    t.integer "grad_year"
    t.string "personal_mail"
    t.string "college_mail"
    t.integer "phone_no"
    t.string "company_name"
    t.string "designation"
    t.string "location"
    t.string "linkedIn"
    t.string "facebook"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.index ["email"], name: "index_alumni_on_email", unique: true
    t.index ["reset_password_token"], name: "index_alumni_on_reset_password_token", unique: true
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regs", force: :cascade do |t|
    t.integer "alumnus_id"
    t.integer "event_id"
    t.integer "guests", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["alumnus_id"], name: "index_regs_on_alumnus_id"
    t.index ["event_id"], name: "index_regs_on_event_id"
  end

end
