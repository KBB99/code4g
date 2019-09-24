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

ActiveRecord::Schema.define(version: 20190321052124) do

  create_table "conversations", force: :cascade do |t|
    t.integer "sender_id"
    t.integer "recipient_id"
    t.integer "perspective"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fotitos", force: :cascade do |t|
    t.text "content"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture"
    t.index ["user_id", "created_at"], name: "index_fotitos_on_user_id_and_created_at"
    t.index ["user_id"], name: "index_fotitos_on_user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "integer"
    t.integer "note_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "body"
    t.integer "conversation_id"
    t.integer "user_id"
    t.boolean "read", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "subject_id"
    t.string "micropost_id"
    t.index ["conversation_id"], name: "index_messages_on_conversation_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "microposts", force: :cascade do |t|
    t.text "content"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture"
    t.string "document"
    t.string "name"
    t.string "user"
    t.integer "users"
    t.boolean "public"
    t.index ["user_id", "created_at"], name: "index_microposts_on_user_id_and_created_at"
    t.index ["user_id"], name: "index_microposts_on_user_id"
  end

  create_table "microposts_users", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "micropost_id", null: false
    t.index ["micropost_id", "user_id"], name: "index_microposts_users_on_micropost_id_and_user_id"
    t.index ["user_id", "micropost_id"], name: "index_microposts_users_on_user_id_and_micropost_id"
  end

  create_table "notes", force: :cascade do |t|
    t.text "content"
    t.integer "microposts_id"
    t.integer "users_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.integer "micropost_id"
    t.integer "user"
    t.integer "teacher_id"
    t.integer "subject_id"
    t.boolean "anonymous"
    t.integer "likes"
    t.index ["created_at"], name: "index_notes_on_created_at"
    t.index ["microposts_id"], name: "index_notes_on_microposts_id"
    t.index ["users_id"], name: "index_notes_on_users_id"
  end

  create_table "pictures", force: :cascade do |t|
    t.integer "person"
    t.integer "type"
    t.integer "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_files", force: :cascade do |t|
    t.string "name"
    t.integer "micropost_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "url"
    t.string "user_id"
    t.string "content_type"
    t.integer "subject_id"
    t.index ["created_at"], name: "index_project_files_on_created_at"
    t.index ["micropost_id"], name: "index_project_files_on_micropost_id"
  end

  create_table "relationships", force: :cascade do |t|
    t.integer "follower_id"
    t.integer "followed_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["followed_id"], name: "index_relationships_on_followed_id"
    t.index ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true
    t.index ["follower_id"], name: "index_relationships_on_follower_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.integer "teachers_id"
    t.integer "teacher_id"
    t.index ["teachers_id"], name: "index_subjects_on_teachers_id"
  end

  create_table "subjects_teachers", id: false, force: :cascade do |t|
    t.integer "teacher_id", null: false
    t.integer "subject_id", null: false
  end

  create_table "subjects_users", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "subject_id", null: false
    t.index ["subject_id", "user_id"], name: "index_subjects_users_on_subject_id_and_user_id"
    t.index ["user_id", "subject_id"], name: "index_subjects_users_on_user_id_and_subject_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "campus"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "subjects"
    t.string "domain"
    t.text "position"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "campus"
    t.string "major"
    t.string "interests"
    t.string "experience"
    t.integer "year"
    t.string "internships"
    t.string "technical"
    t.string "spoken_languages"
    t.string "other"
    t.string "connections"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "remember_digest"
    t.boolean "admin", default: false
    t.string "activation_digest"
    t.boolean "activated", default: false
    t.datetime "activated_at"
    t.string "reset_digest"
    t.datetime "reset_sent_at"
    t.string "position"
    t.string "minor"
    t.string "picture"
    t.string "first_name"
    t.string "last_name"
    t.string "authenticity_token"
    t.string "user"
    t.string "commit"
    t.string "utf8"
    t.integer "micropost_id"
    t.text "recommendations"
    t.integer "subject_id"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
