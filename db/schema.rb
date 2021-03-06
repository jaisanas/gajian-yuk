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

ActiveRecord::Schema.define(version: 20191102055704) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "disbursement_requests", force: :cascade do |t|
    t.bigint "employees_id"
    t.text "message"
    t.decimal "amount"
    t.datetime "disbursement_date"
    t.decimal "employee_salary_balance"
    t.text "status"
    t.integer "hr_admin_id"
    t.integer "employee_id"
    t.integer "montly_used_credit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employees_id"], name: "index_disbursement_requests_on_employees_id"
  end

  create_table "disbursement_transactions", force: :cascade do |t|
    t.bigint "disbursement_requests_id"
    t.integer "monthly_disbursement_number"
    t.text "status"
    t.integer "finance_admin_id"
    t.integer "disbursement_request_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["disbursement_requests_id"], name: "index_disbursement_transactions_on_disbursement_requests_id"
  end

  create_table "dt_logs", force: :cascade do |t|
    t.bigint "disbursement_transactions_id"
    t.integer "monthly_disbursement_number"
    t.text "status"
    t.decimal "disburse_amount"
    t.integer "disbursement_transaction_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["disbursement_transactions_id"], name: "index_dt_logs_on_disbursement_transactions_id"
  end

  create_table "employees", force: :cascade do |t|
    t.text "name"
    t.text "npwp"
    t.text "no_ktp"
    t.text "disburse_credit"
    t.text "status"
    t.text "level"
    t.decimal "salary"
    t.datetime "join_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "employee_id"
    t.text "user_admin_id"
    t.text "company_id"
    t.decimal "employee_deposit"
    t.text "bank_account_name"
    t.text "bank_account_number"
    t.text "bank_name"
    t.text "phone_number"
    t.text "email"
  end

end
