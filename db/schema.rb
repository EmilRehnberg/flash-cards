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

ActiveRecord::Schema.define(version: 20140701104208) do

  create_table "cards", force: true do |t|
    t.string   "men",        null: false
    t.text     "kotae",      null: false
    t.string   "on"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cards_tags", id: false, force: true do |t|
    t.integer "card_id"
    t.integer "tag_id"
  end

  add_index "cards_tags", ["card_id", "tag_id"], name: "index_cards_tags_on_card_id_and_tag_id"
  add_index "cards_tags", ["tag_id"], name: "index_cards_tags_on_tag_id"

  create_table "kadais", force: true do |t|
    t.string   "namae",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "kadais_tags", id: false, force: true do |t|
    t.integer "kadai_id"
    t.integer "tag_id"
  end

  add_index "kadais_tags", ["kadai_id", "tag_id"], name: "index_kadais_tags_on_kadai_id_and_tag_id"
  add_index "kadais_tags", ["tag_id"], name: "index_kadais_tags_on_tag_id"

  create_table "kanji_shousais", force: true do |t|
    t.integer  "card_id"
    t.string   "onyomi"
    t.string   "kunyomi"
    t.string   "imi",        null: false
    t.string   "bushu"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "kanji_shousais", ["card_id"], name: "index_kanji_shousais_on_card_id"

  create_table "setteis", force: true do |t|
    t.integer  "kadai_id"
    t.integer  "reminder",         default: 0
    t.integer  "on_wo_purei_suru", default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "setteis", ["kadai_id"], name: "index_setteis_on_kadai_id"

  create_table "tags", force: true do |t|
    t.string   "namae"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tango_shousais", force: true do |t|
    t.integer  "card_id"
    t.string   "kana"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tango_shousais", ["card_id"], name: "index_tango_shousais_on_card_id"

  create_table "toukeis", force: true do |t|
    t.integer  "card_id",                     null: false
    t.integer  "saikin_no_kotae", default: 1, null: false
    t.integer  "tameshi",         default: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tadashii",        default: 0, null: false
  end

  add_index "toukeis", ["card_id"], name: "index_toukeis_on_card_id"

end
