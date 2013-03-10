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

ActiveRecord::Schema.define(:version => 20130309235754) do

  create_table "gardeners", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "gardeners", ["email"], :name => "index_gardeners_on_email", :unique => true
  add_index "gardeners", ["reset_password_token"], :name => "index_gardeners_on_reset_password_token", :unique => true

  create_table "plants", :force => true do |t|
    t.string   "name"
    t.string   "species"
    t.string   "common_names"
    t.string   "colour"
    t.text     "description"
    t.text     "comments_care"
    t.string   "soil"
    t.string   "position"
    t.string   "genus"
    t.string   "dimensions"
    t.string   "flowering_season"
    t.string   "foliage_colour"
    t.string   "potential_use"
    t.string   "potential_style"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "seeds", :force => true do |t|
    t.string   "name"
    t.string   "source"
    t.string   "sowing_time"
    t.string   "species"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
