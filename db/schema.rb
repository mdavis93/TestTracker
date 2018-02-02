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

ActiveRecord::Schema.define(version: 20180112043903) do

  create_table "cohorts", force: :cascade do |t|
    t.string "cohort_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cohort_id"], name: "index_cohorts_on_cohort_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "course_id", null: false
    t.integer "instructor_id"
    t.integer "session_id"
    t.integer "shift", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_courses_on_course_id"
    t.index ["instructor_id"], name: "index_courses_on_instructor_id"
    t.index ["session_id"], name: "index_courses_on_session_id"
  end

  create_table "exams", force: :cascade do |t|
    t.integer "course_id"
    t.integer "student_id"
    t.integer "exam_num", default: 1, null: false
    t.boolean "retake", default: false, null: false
    t.boolean "makeup", default: false, null: false
    t.integer "mod_by", null: false
    t.integer "exam_type", default: 0, null: false
    t.integer "result", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_exams_on_course_id"
    t.index ["student_id"], name: "index_exams_on_student_id"
  end

  create_table "instructors", force: :cascade do |t|
    t.integer "user_id"
    t.integer "campus_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_instructors_on_user_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.integer "course_id"
    t.integer "student_id"
    t.boolean "repeat", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_schedules_on_course_id"
    t.index ["student_id"], name: "index_schedules_on_student_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.string "name", null: false
    t.date "first_day", null: false
    t.date "last_day", null: false
    t.date "deadline", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_sessions_on_name"
  end

  create_table "students", force: :cascade do |t|
    t.integer "cohort_id"
    t.string "fname", null: false
    t.string "lname", null: false
    t.integer "status", default: 1, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cohort_id"], name: "index_students_on_cohort_id"
    t.index [nil], name: "index_students_on_name"
  end

  create_table "users", force: :cascade do |t|
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
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "fname"
    t.string "lname"
    t.integer "role"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role"], name: "index_users_on_role"
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

end
