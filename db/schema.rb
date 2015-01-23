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

ActiveRecord::Schema.define(version: 20141026192510) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "binaries", force: true do |t|
    t.binary   "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cosa_boundaries", force: true do |t|
    t.string   "name"
    t.float    "sqmiles"
    t.float    "shape_area"
    t.float    "shape_leng"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.spatial  "geom",       limit: {:srid=>0, :type=>"geometry"}
    t.float    "acres"
  end

  create_table "general_repair_permits", force: true do |t|
    t.boolean  "addition"
    t.integer  "house_area"
    t.integer  "addition_area"
    t.string   "ac"
    t.boolean  "window"
    t.integer  "window_count"
    t.boolean  "door"
    t.integer  "door_count"
    t.boolean  "wall"
    t.boolean  "siding"
    t.boolean  "floor"
    t.boolean  "cover"
    t.boolean  "pool"
    t.boolean  "deck"
    t.boolean  "acs_struct"
    t.boolean  "accepted_terms"
    t.text     "work_summary"
    t.decimal  "job_cost",       precision: 15, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "project_id"
  end

  add_index "general_repair_permits", ["project_id"], :name => "index_general_repair_permits_on_project_id"

  create_table "permit_binary_details", force: true do |t|
    t.string   "filename"
    t.string   "content_type"
    t.integer  "size"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "binary_id"
    t.integer  "permit_id"
  end

  add_index "permit_binary_details", ["binary_id"], :name => "index_permit_binary_details_on_binary_id"
  add_index "permit_binary_details", ["permit_id"], :name => "index_permit_binary_details_on_permit_id"

  create_table "projects", force: true do |t|
    t.string   "owner_name"
    t.string   "owner_address"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status"
    t.boolean  "contractor"
    t.float    "lat"
    t.float    "lng"
    t.boolean  "selected_addition"
    t.boolean  "selected_acs_struct"
    t.boolean  "selected_deck"
    t.boolean  "selected_pool"
    t.boolean  "selected_cover"
    t.boolean  "selected_window"
    t.boolean  "selected_door"
    t.boolean  "selected_wall"
    t.boolean  "selected_siding"
    t.boolean  "selected_floor"
    t.string   "addition_size"
    t.string   "addition_num_story"
    t.string   "acs_struct_size"
    t.string   "acs_struct_num_story"
    t.string   "deck_size"
    t.string   "deck_grade"
    t.string   "deck_dwelling_attach"
    t.string   "deck_exit_door"
    t.string   "pool_location"
    t.string   "pool_volume"
    t.boolean  "window_replace_glass"
    t.boolean  "door_replace_existing"
    t.boolean  "wall_general_changes"
    t.boolean  "siding_over_existing"
    t.boolean  "floor_covering"
  end

end
