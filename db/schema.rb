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

ActiveRecord::Schema.define(version: 2022_07_29_131527) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "crops", force: :cascade do |t|
    t.string "name"
    t.integer "year"
    t.decimal "hectares"
    t.decimal "row_spacing"
    t.bigint "farm_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["farm_id"], name: "index_crops_on_farm_id"
  end

  create_table "farms", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.string "name"
    t.index ["user_id"], name: "index_farms_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.decimal "rate_per_ha"
    t.boolean "liquid"
    t.bigint "farm_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["farm_id"], name: "index_products_on_farm_id"
  end

  create_table "program_crops", force: :cascade do |t|
    t.bigint "crop_id", null: false
    t.bigint "spray_program_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["crop_id"], name: "index_program_crops_on_crop_id"
    t.index ["spray_program_id"], name: "index_program_crops_on_spray_program_id"
  end

  create_table "program_doses", force: :cascade do |t|
    t.decimal "total_dose"
    t.decimal "tank_dose"
    t.bigint "product_id", null: false
    t.bigint "spray_program_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_program_doses_on_product_id"
    t.index ["spray_program_id"], name: "index_program_doses_on_spray_program_id"
  end

  create_table "program_sprayers", force: :cascade do |t|
    t.bigint "sprayer_id", null: false
    t.bigint "spray_program_id", null: false
    t.decimal "litres_per_min"
    t.decimal "speed"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["spray_program_id"], name: "index_program_sprayers_on_spray_program_id"
    t.index ["sprayer_id"], name: "index_program_sprayers_on_sprayer_id"
  end

  create_table "spray_programs", force: :cascade do |t|
    t.datetime "date"
    t.decimal "volume_per_tank"
    t.decimal "total_volume"
    t.integer "tanks_count"
    t.bigint "farm_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["farm_id"], name: "index_spray_programs_on_farm_id"
  end

  create_table "sprayers", force: :cascade do |t|
    t.string "name"
    t.integer "capacity"
    t.bigint "farm_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["farm_id"], name: "index_sprayers_on_farm_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "crops", "farms"
  add_foreign_key "farms", "users"
  add_foreign_key "products", "farms"
  add_foreign_key "program_crops", "crops"
  add_foreign_key "program_crops", "spray_programs"
  add_foreign_key "program_doses", "products"
  add_foreign_key "program_doses", "spray_programs"
  add_foreign_key "program_sprayers", "spray_programs"
  add_foreign_key "program_sprayers", "sprayers"
  add_foreign_key "spray_programs", "farms"
  add_foreign_key "sprayers", "farms"
end
