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

ActiveRecord::Schema[7.0].define(version: 2022_07_27_101215) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "insuarances", force: :cascade do |t|
    t.string "first_name"
    t.text "address"
    t.string "last_name"
    t.bigint "postal_code"
    t.string "email"
    t.string "city"
    t.bigint "phone"
    t.string "province"
    t.bigint "municipla_evaluation_of_property"
    t.string "insuarance_premium"
    t.boolean "language"
    t.string "second_home_owner"
    t.string "third_home_owner"
    t.string "type_of_property"
    t.boolean "present_owner"
    t.date "purchase_date"
    t.integer "lot_number"
    t.boolean "bound_by_water"
    t.boolean "ensure_municipal_water_sewer"
    t.boolean "ensure_property"
    t.boolean "client_knowledge"
    t.text "note"
    t.string "referral_agent_name"
    t.string "referral_agent_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
