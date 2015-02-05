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

ActiveRecord::Schema.define(version: 0) do

  create_table "cards", force: :cascade do |t|
    t.string  "rank"
    t.integer "value"
    t.string  "suit"
    t.boolean "is_face_up", default: false
    t.boolean "is_wild",    default: false
    t.boolean "is_ace_low", default: false
  end

  create_table "games", force: :cascade do |t|
    t.string "game_type"
    t.string "game_name"
    t.string "game_desc"
  end

  create_table "players", force: :cascade do |t|
    t.string  "player_name"
    t.integer "user_id"
    t.integer "seat_position"
    t.boolean "is_dealer",     default: false
    t.boolean "is_table",      default: false
  end

  add_index "players", ["user_id"], name: "index_players_on_user_id"

  create_table "rules", force: :cascade do |t|
    t.string  "rule_description"
    t.boolean "is_on",            default: false
    t.string  "rule_name"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.string "username"
  end

end
