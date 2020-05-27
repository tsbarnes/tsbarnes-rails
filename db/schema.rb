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

ActiveRecord::Schema.define(version: 2020_05_27_212936) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.bigint "education_id", null: false
    t.string "name"
    t.integer "order"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["education_id"], name: "index_courses_on_education_id"
  end

  create_table "educations", force: :cascade do |t|
    t.bigint "resume_id", null: false
    t.string "institution"
    t.string "area"
    t.string "school_url"
    t.string "study_type"
    t.date "start_date"
    t.date "end_date"
    t.float "gpa"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["resume_id"], name: "index_educations_on_resume_id"
  end

  create_table "highlights", force: :cascade do |t|
    t.string "job_type"
    t.bigint "job_id"
    t.string "description"
    t.integer "order"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["job_type", "job_id"], name: "index_highlights_on_job_type_and_job_id"
  end

  create_table "interests", force: :cascade do |t|
    t.bigint "resume_id", null: false
    t.string "name"
    t.integer "order"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["resume_id"], name: "index_interests_on_resume_id"
  end

  create_table "keywords", force: :cascade do |t|
    t.string "owner_type"
    t.bigint "owner_id"
    t.string "name"
    t.integer "order"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["owner_type", "owner_id"], name: "index_keywords_on_owner_type_and_owner_id"
  end

  create_table "languages", force: :cascade do |t|
    t.bigint "resume_id", null: false
    t.string "name"
    t.string "fluency"
    t.integer "order"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["resume_id"], name: "index_languages_on_resume_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "address"
    t.string "postal_code"
    t.string "city"
    t.string "region"
    t.string "region_shorthand"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "resume_id", null: false
    t.index ["resume_id"], name: "index_locations_on_resume_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.bigint "resume_id", null: false
    t.string "network"
    t.string "icon_name"
    t.string "username"
    t.string "url"
    t.integer "order"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["resume_id"], name: "index_profiles_on_resume_id"
  end

  create_table "references", force: :cascade do |t|
    t.bigint "resume_id", null: false
    t.string "name"
    t.string "reference"
    t.integer "order"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["resume_id"], name: "index_references_on_resume_id"
  end

  create_table "resumes", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "label"
    t.string "email"
    t.string "phone"
    t.string "summary"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "skills", force: :cascade do |t|
    t.bigint "resume_id", null: false
    t.string "name"
    t.string "url"
    t.string "level"
    t.integer "order"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["resume_id"], name: "index_skills_on_resume_id"
  end

  create_table "volunteers", force: :cascade do |t|
    t.bigint "resume_id", null: false
    t.string "organization"
    t.string "position"
    t.string "website"
    t.date "start_date"
    t.date "end_date"
    t.string "summary"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["resume_id"], name: "index_volunteers_on_resume_id"
  end

  create_table "works", force: :cascade do |t|
    t.bigint "resume_id", null: false
    t.string "company"
    t.string "position"
    t.string "website"
    t.date "start_date"
    t.date "end_date"
    t.string "summary"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["resume_id"], name: "index_works_on_resume_id"
  end

  add_foreign_key "courses", "educations"
  add_foreign_key "educations", "resumes"
  add_foreign_key "interests", "resumes"
  add_foreign_key "languages", "resumes"
  add_foreign_key "locations", "resumes"
  add_foreign_key "profiles", "resumes"
  add_foreign_key "references", "resumes"
  add_foreign_key "skills", "resumes"
  add_foreign_key "volunteers", "resumes"
  add_foreign_key "works", "resumes"
end
