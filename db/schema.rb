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

ActiveRecord::Schema.define(:version => 20130117090149) do

  create_table "incidents", :force => true do |t|
    t.integer  "victim_id"
    t.integer  "spam_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "incidents", ["spam_id"], :name => "index_incidents_on_spam_id"
  add_index "incidents", ["victim_id"], :name => "index_incidents_on_victim_id"

  create_table "spams", :force => true do |t|
    t.string   "title"
    t.text     "content",      :limit => 255
    t.string   "spammer"
    t.integer  "submitter_id"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  add_index "spams", ["submitter_id"], :name => "index_spams_on_submitter_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
