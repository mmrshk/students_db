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

ActiveRecord::Schema.define(version: 2020_04_11_071701) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.boolean "active", default: true
  end

  create_table "books", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.bigint "author_id"
    t.bigint "publishing_id"
    t.boolean "active", default: true
    t.index ["author_id"], name: "index_books_on_author_id"
    t.index ["publishing_id"], name: "index_books_on_publishing_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.boolean "active", default: true
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.boolean "active", default: true
  end

  create_table "proffessors", force: :cascade do |t|
    t.boolean "active", default: true
    t.bigint "people_id"
    t.index ["people_id"], name: "index_proffessors_on_people_id"
  end

  create_table "publishings", force: :cascade do |t|
    t.string "name"
    t.boolean "active", default: true
  end

  create_table "staffs", force: :cascade do |t|
    t.bigint "people_id"
    t.boolean "active", default: true
    t.index ["people_id"], name: "index_staffs_on_people_id"
  end

  create_table "student_cards", force: :cascade do |t|
    t.string "name"
    t.boolean "active", default: true
    t.bigint "student_id"
    t.bigint "staff_id"
    t.bigint "book_id"
    t.datetime "date_of_issuing"
    t.datetime "date_of_return"
    t.index ["book_id"], name: "index_student_cards_on_book_id"
    t.index ["staff_id"], name: "index_student_cards_on_staff_id"
    t.index ["student_id"], name: "index_student_cards_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.boolean "active", default: true
    t.bigint "people_id"
    t.bigint "group_id"
    t.index ["group_id"], name: "index_students_on_group_id"
    t.index ["people_id"], name: "index_students_on_people_id"
  end

  create_table "tutor_cards", force: :cascade do |t|
    t.string "name"
    t.boolean "active", default: true
    t.bigint "proffessor_id"
    t.bigint "staff_id"
    t.bigint "book_id"
    t.datetime "date_of_issuing"
    t.datetime "date_of_return"
    t.index ["book_id"], name: "index_tutor_cards_on_book_id"
    t.index ["proffessor_id"], name: "index_tutor_cards_on_proffessor_id"
    t.index ["staff_id"], name: "index_tutor_cards_on_staff_id"
  end

end
