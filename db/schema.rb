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

ActiveRecord::Schema.define(version: 2020_08_04_215716) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignatures", force: :cascade do |t|
    t.string "name"
    t.bigint "teacher_id", null: false
    t.bigint "batch_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["batch_id"], name: "index_assignatures_on_batch_id"
  end

  create_table "batches", force: :cascade do |t|
    t.string "grade"
    t.integer "start_year"
    t.integer "end_year"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.bigint "batch_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["batch_id"], name: "index_courses_on_batch_id"
  end

  create_table "events", force: :cascade do |t|
    t.datetime "date"
    t.string "eventable_type"
    t.string "eventable_id"
    t.bigint "course_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_events_on_course_id"
  end

  create_table "homeworks", force: :cascade do |t|
    t.string "content"
    t.string "answer"
    t.integer "type"
    t.bigint "lesson_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
  end

  create_table "lessons", force: :cascade do |t|
    t.bigint "assignature_id", null: false
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "video"
    t.index ["assignature_id"], name: "index_lessons_on_assignature_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.bigint "lesson_id", null: false
    t.string "state"
    t.string "description"
    t.bigint "student_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_homeworks", force: :cascade do |t|
    t.bigint "student_id", null: false
    t.bigint "homework_id", null: false
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["homework_id"], name: "index_user_homeworks_on_homework_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "role"
    t.string "institute"
    t.datetime "birthday"
    t.boolean "available"
    t.bigint "batch_id", null: false
    t.index ["batch_id"], name: "index_users_on_batch_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "assignatures", "batches"
  add_foreign_key "courses", "batches"
  add_foreign_key "events", "courses"
  add_foreign_key "lessons", "assignatures"
  add_foreign_key "user_homeworks", "homeworks"
  add_foreign_key "users", "batches"
end
