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

ActiveRecord::Schema.define(version: 20180106123916) do

  create_table "bets", force: :cascade do |t|
    t.string "name"
    t.float "ratio"
    t.integer "matchup_id"
    t.string "refered"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["matchup_id"], name: "index_bets_on_matchup_id"
  end

  create_table "champions", force: :cascade do |t|
    t.string "name"
    t.integer "game_id"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_champions_on_game_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "maps", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "game_id"
    t.index ["game_id"], name: "index_maps_on_game_id"
  end

  create_table "matchups", force: :cascade do |t|
    t.integer "blue_team_id"
    t.integer "red_team_id"
    t.integer "winner_id"
    t.integer "looser_id"
    t.integer "tournament_id"
    t.date "date"
    t.datetime "updated_at", null: false
    t.datetime "created_at", null: false
    t.index ["blue_team_id"], name: "index_matchups_on_blue_team_id"
    t.index ["looser_id"], name: "index_matchups_on_looser_id"
    t.index ["red_team_id"], name: "index_matchups_on_red_team_id"
    t.index ["tournament_id"], name: "index_matchups_on_tournament_id"
    t.index ["winner_id"], name: "index_matchups_on_winner_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "lastname"
    t.string "nick"
    t.string "origin"
    t.integer "team_id"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_players_on_team_id"
  end

  create_table "players_map_performances", force: :cascade do |t|
    t.integer "player_id"
    t.integer "map_id"
    t.float "win_rate"
    t.float "loose_rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["map_id"], name: "index_players_map_performances_on_map_id"
    t.index ["player_id"], name: "index_players_map_performances_on_player_id"
  end

  create_table "players_picks", force: :cascade do |t|
    t.integer "player_id"
    t.integer "champion_id"
    t.float "pick_rate"
    t.float "win_rate"
    t.string "kda"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["champion_id"], name: "index_players_picks_on_champion_id"
    t.index ["player_id"], name: "index_players_picks_on_player_id"
  end

  create_table "statistics", force: :cascade do |t|
    t.string "name"
    t.float "ratio"
    t.integer "player_id"
    t.integer "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_statistics_on_player_id"
    t.index ["team_id"], name: "index_statistics_on_team_id"
  end

  create_table "streamers", force: :cascade do |t|
    t.string "twitch_user_id"
    t.string "twitch_username"
    t.string "twitch_channel_url"
    t.string "name"
    t.integer "game_id"
    t.integer "streamer_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_streamers_on_game_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "origin"
    t.string "coach"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tournament_teams", force: :cascade do |t|
    t.integer "tournament_id"
    t.integer "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_tournament_teams_on_team_id"
    t.index ["tournament_id"], name: "index_tournament_teams_on_tournament_id"
  end

  create_table "tournaments", force: :cascade do |t|
    t.string "name"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "update_at"
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "lastname"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
