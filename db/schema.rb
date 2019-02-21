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

ActiveRecord::Schema.define(version: 2019_02_21_015611) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "lessons", force: :cascade do |t|
    t.string "title"
    t.integer "course_order"
    t.string "content"
    t.string "lesson_type"
    t.integer "topic_id"
    t.integer "unit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["topic_id"], name: "index_lessons_on_topic_id"
    t.index ["unit_id"], name: "index_lessons_on_unit_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "score"
    t.integer "user_id"
    t.integer "tip_id"
    t.text "score_reason"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tip_id"], name: "index_ratings_on_tip_id"
    t.index ["user_id"], name: "index_ratings_on_user_id"
  end

  create_table "tips", force: :cascade do |t|
    t.string "title"
    t.string "link"
    t.string "resource_type"
    t.string "time_requirement"
    t.text "other_info"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_tips_on_user_id"
  end

  create_table "topic_tips", force: :cascade do |t|
    t.integer "topic_id"
    t.integer "tip_id"
    t.index ["tip_id"], name: "index_topic_tips_on_tip_id"
    t.index ["topic_id"], name: "index_topic_tips_on_topic_id"
  end

  create_table "topics", force: :cascade do |t|
    t.string "title"
    t.integer "unit_id"
    t.integer "course_order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["unit_id"], name: "index_topics_on_unit_id"
  end

  create_table "units", force: :cascade do |t|
    t.string "title"
    t.integer "course_order"
    t.string "image_path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.string "school_relationship"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
