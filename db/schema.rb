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

ActiveRecord::Schema.define(version: 2022_05_10_035847) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string "account"
    t.string "bank"
    t.bigint "father_id"
    t.bigint "mother_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["father_id"], name: "index_accounts_on_father_id"
    t.index ["mother_id"], name: "index_accounts_on_mother_id"
  end

  create_table "fathers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "last_maiden_name"
    t.string "email"
    t.string "identifier"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "mothers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "last_maiden_name"
    t.string "email"
    t.string "identifier"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "payments", force: :cascade do |t|
    t.string "amount"
    t.date "payment_date"
    t.bigint "account_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["account_id"], name: "index_payments_on_account_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "last_maiden_name"
    t.string "grade"
    t.bigint "mother_id"
    t.bigint "father_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["father_id"], name: "index_students_on_father_id"
    t.index ["mother_id"], name: "index_students_on_mother_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.date "ticket_date"
    t.string "ticket_type"
    t.string "ticket_status"
    t.string "ticket_amount"
    t.bigint "payment_id"
    t.bigint "student_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["payment_id"], name: "index_tickets_on_payment_id"
    t.index ["student_id"], name: "index_tickets_on_student_id"
  end

  add_foreign_key "accounts", "fathers"
  add_foreign_key "accounts", "mothers"
  add_foreign_key "payments", "accounts"
  add_foreign_key "students", "fathers"
  add_foreign_key "students", "mothers"
  add_foreign_key "tickets", "payments"
  add_foreign_key "tickets", "students"
end
