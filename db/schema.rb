# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150119181310) do

  create_table "genres", force: true do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "playlists", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "users_id"
  end

  add_index "playlists", ["users_id"], name: "index_playlists_on_users_id"

  create_table "playlists_songs", force: true do |t|
    t.integer  "playlist_id"
    t.integer  "song_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "songs", force: true do |t|
    t.string   "title"
    t.string   "artist"
    t.string   "image"
    t.string   "track_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "genre_id"
    t.integer  "genres_id"
    t.integer  "users_id"
  end

  add_index "songs", ["genre_id"], name: "index_songs_on_genre_id"
  add_index "songs", ["genres_id"], name: "index_songs_on_genres_id"
  add_index "songs", ["users_id"], name: "index_songs_on_users_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role"
    t.string   "image"
    t.string   "city"
    t.string   "country"
  end

end
