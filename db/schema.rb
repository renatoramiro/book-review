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

ActiveRecord::Schema.define(version: 2018_07_26_224814) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookcases", force: :cascade do |t|
    t.bigint "book_id"
    t.bigint "reader_id"
    t.integer "evaluation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_bookcases_on_book_id"
    t.index ["reader_id"], name: "index_bookcases_on_reader_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.integer "number_of_pages"
    t.text "review"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.bigint "book_id"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "reader_id"
    t.index ["book_id"], name: "index_comments_on_book_id"
    t.index ["reader_id"], name: "index_comments_on_reader_id"
  end

  create_table "readers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "bookcases", "books"
  add_foreign_key "bookcases", "readers"
  add_foreign_key "comments", "books"
  add_foreign_key "comments", "readers"
end
