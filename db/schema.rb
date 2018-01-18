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

ActiveRecord::Schema.define(version: 20180118082443) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "genres", force: :cascade do |t|
    t.string "keyword"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres_movies", force: :cascade do |t|
    t.bigint "movie_id"
    t.bigint "genre_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["genre_id"], name: "index_genres_movies_on_genre_id"
    t.index ["movie_id"], name: "index_genres_movies_on_movie_id"
  end

  create_table "genres_users", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "genre_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["genre_id"], name: "index_genres_users_on_genre_id"
    t.index ["user_id"], name: "index_genres_users_on_user_id"
  end

  create_table "issues", force: :cascade do |t|
    t.string "keyword"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "issues_movies", force: :cascade do |t|
    t.bigint "movie_id"
    t.bigint "issue_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["issue_id"], name: "index_issues_movies_on_issue_id"
    t.index ["movie_id"], name: "index_issues_movies_on_movie_id"
  end

  create_table "issues_users", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "issue_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["issue_id"], name: "index_issues_users_on_issue_id"
    t.index ["user_id"], name: "index_issues_users_on_user_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.integer "year"
    t.string "run_time"
    t.string "rating"
    t.text "synopsis"
    t.string "psychologist"
    t.text "why_recommend"
    t.text "learn"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.string "image_uri"
  end

  create_table "searches", force: :cascade do |t|
    t.string "issues"
    t.string "genre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "genres_movies", "genres"
  add_foreign_key "genres_movies", "movies"
  add_foreign_key "genres_users", "genres"
  add_foreign_key "genres_users", "users"
  add_foreign_key "issues_movies", "issues"
  add_foreign_key "issues_movies", "movies"
  add_foreign_key "issues_users", "issues"
  add_foreign_key "issues_users", "users"
end
