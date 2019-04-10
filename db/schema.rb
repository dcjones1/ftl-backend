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

ActiveRecord::Schema.define(version: 2019_04_05_151323) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "crew_ships", force: :cascade do |t|
    t.bigint "crew_id"
    t.bigint "ship_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["crew_id"], name: "index_crew_ships_on_crew_id"
    t.index ["ship_id"], name: "index_crew_ships_on_ship_id"
  end

  create_table "crews", force: :cascade do |t|
    t.string "name"
    t.string "species"
    t.string "role"
    t.integer "skill"
    t.integer "health"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "game_ships", force: :cascade do |t|
    t.bigint "game_id"
    t.bigint "ship_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_game_ships_on_game_id"
    t.index ["ship_id"], name: "index_game_ships_on_ship_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.boolean "playing"
    t.bigint "player_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_games_on_player_id"
  end

  create_table "level_ships", force: :cascade do |t|
    t.bigint "level_id"
    t.bigint "ship_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["level_id"], name: "index_level_ships_on_level_id"
    t.index ["ship_id"], name: "index_level_ships_on_ship_id"
  end

  create_table "levels", force: :cascade do |t|
    t.string "title"
    t.text "story"
    t.text "choices", array: true
    t.text "consequence", array: true
    t.bigint "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_levels_on_game_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ship_weapons", force: :cascade do |t|
    t.bigint "ship_id"
    t.bigint "weapon_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ship_id"], name: "index_ship_weapons_on_ship_id"
    t.index ["weapon_id"], name: "index_ship_weapons_on_weapon_id"
  end

  create_table "ships", force: :cascade do |t|
    t.string "name"
    t.integer "health"
    t.bigint "player_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_ships_on_player_id"
  end

  create_table "weapons", force: :cascade do |t|
    t.string "name"
    t.integer "shots"
    t.integer "effect"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
