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

ActiveRecord::Schema.define(:version => 20120414231829) do

  create_table "plants", :force => true do |t|
    t.string   "name"
    t.string   "common_names"
    t.string   "origin"
    t.string   "dimensions"
    t.string   "cultural_conditions"
    t.string   "flowering_season"
    t.string   "colour"
    t.string   "growth_rate"
    t.string   "foliage_colour"
    t.string   "potential_use"
    t.string   "potential_style"
    t.text     "comments_care"
    t.text     "description"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

end
