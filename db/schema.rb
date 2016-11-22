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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20161122211323) do

  create_table "events", :force => true do |t|
    t.datetime "generated_at"
    t.string   "text",           :limit => 191
    t.string   "plext_type"
    t.integer  "categories"
    t.string   "player"
    t.string   "player_team"
    t.string   "plain_text",     :limit => 191
    t.string   "portal_name"
    t.string   "portal_team"
    t.string   "portal_address"
    t.string   "portal_lat"
    t.string   "portal_lng"
    t.string   "sender"
    t.string   "sender_team"
    t.string   "sender_text",    :limit => 191
    t.string   "at_player"
    t.string   "at_player_team"
    t.string   "at_player_text", :limit => 191
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.string   "team"
    t.string   "ingress_id"
  end

end
