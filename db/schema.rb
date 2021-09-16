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

ActiveRecord::Schema.define(version: 2021_09_16_170554) do

  create_table "quiz_lists", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "quiz_responses", force: :cascade do |t|
    t.string "response"
    t.integer "quiz_id_id", null: false
    t.boolean "is_right"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["quiz_id_id"], name: "index_quiz_responses_on_quiz_id_id"
  end

  create_table "quizzes", force: :cascade do |t|
    t.string "title"
    t.integer "quiz_list_id", null: false
    t.string "number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["quiz_list_id"], name: "index_quizzes_on_quiz_list_id"
  end

  add_foreign_key "quiz_responses", "quiz_ids"
  add_foreign_key "quizzes", "quiz_lists"
end
