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

ActiveRecord::Schema.define(version: 2022_01_27_034558) do

  create_table "authors", force: :cascade do |t|
    t.string "fname"
    t.string "lname"
    t.date "dob"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "authors_books", id: false, force: :cascade do |t|
    t.integer "author_id", null: false
    t.integer "book_id", null: false
    t.index ["book_id", "author_id"], name: "index_authors_books_on_book_id_and_author_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "name"
    t.decimal "price", precision: 5, scale: 2
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "author_id", null: false
    t.index ["author_id"], name: "index_books_on_author_id"
  end

  create_table "distributors", force: :cascade do |t|
    t.string "zipcode"
    t.string "fname"
  end

  create_table "images", force: :cascade do |t|
    t.string "author_type", null: false
    t.integer "author_id", null: false
    t.string "books_type", null: false
    t.integer "books_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_images_on_author"
    t.index ["books_type", "books_id"], name: "index_images_on_books"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
  end

  add_foreign_key "books", "authors"
end
