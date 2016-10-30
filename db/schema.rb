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

ActiveRecord::Schema.define(version: 20161029095323) do

  create_table "auctionables", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image_url"
    t.integer  "base_price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "bid_events", force: :cascade do |t|
    t.integer  "auctionable_id"
    t.integer  "participant_id"
    t.integer  "amount"
    t.boolean  "final"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["auctionable_id"], name: "index_bid_events_on_auctionable_id"
    t.index ["participant_id"], name: "index_bid_events_on_participant_id"
  end

  create_table "participants", force: :cascade do |t|
    t.string   "name"
    t.string   "organization"
    t.string   "code"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
