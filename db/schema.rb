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
    t.integer "hand_id"
  end

  add_index "cards", ["hand_id"], name: "index_cards_on_hand_id"

  create_table "game_rules", force: :cascade do |t|
    t.integer "game_id"
    t.integer "rule_id"
  end

  add_index "game_rules", ["game_id"], name: "index_game_rules_on_game_id"
  add_index "game_rules", ["rule_id"], name: "index_game_rules_on_rule_id"

  create_table "game_types", force: :cascade do |t|
    t.string "type_name"
    t.string "type_desc"
    t.string "type_image"
  end

  create_table "games", force: :cascade do |t|
    t.string  "game_name"
    t.string  "game_desc"
    t.integer "gametype_id"
    t.string  "game_image"
  end

  add_index "games", ["gametype_id"], name: "index_games_on_gametype_id"

  create_table "hands", force: :cascade do |t|
    t.integer "player_id"
    t.boolean "is_fold",   default: false
    t.integer "round_id"
  end

  add_index "hands", ["player_id"], name: "index_hands_on_player_id"
  add_index "hands", ["round_id"], name: "index_hands_on_round_id"

  create_table "players", force: :cascade do |t|
    t.integer "user_id"
    t.integer "seat_id"
    t.integer "table_id"
    t.boolean "is_dealer", default: false
    t.integer "chips"
    t.integer "bet"
  end

  add_index "players", ["seat_id"], name: "index_players_on_seat_id"
  add_index "players", ["table_id"], name: "index_players_on_table_id"
  add_index "players", ["user_id"], name: "index_players_on_user_id"

  create_table "rounds", force: :cascade do |t|
    t.integer "table_id"
    t.integer "game_id"
    t.integer "pot"
  end

  add_index "rounds", ["game_id"], name: "index_rounds_on_game_id"
  add_index "rounds", ["table_id"], name: "index_rounds_on_table_id"

  create_table "rules", force: :cascade do |t|
    t.string  "rule_description"
    t.boolean "is_on",            default: false
    t.string  "rule_name"
  end

  create_table "seats", force: :cascade do |t|
    t.integer "table_id"
    t.integer "position"
    t.integer "relative_position"
  end

  add_index "seats", ["table_id"], name: "index_seats_on_table_id"

  create_table "tables", force: :cascade do |t|
    t.integer "max_seats"
    t.integer "open_seats"
    t.string  "table_name"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "name"
  end

end
