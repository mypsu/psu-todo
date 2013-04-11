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

ActiveRecord::Schema.define(:version => 20130410015503) do

  create_table "projects", :force => true do |t|
    t.string   "owner"
    t.integer  "user_id"
    t.string   "name"
    t.string   "description"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "taskList"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "taskdependents", :force => true do |t|
    t.integer  "task_id"
    t.string   "dep_id"
    t.string   "create"
    t.string   "destroy"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "taskdeps", :force => true do |t|
    t.integer  "parent_id"
    t.integer  "child_id"
    t.string   "create"
    t.string   "destroy"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "taskdeps", ["child_id"], :name => "index_taskdeps_on_child_id"
  add_index "taskdeps", ["parent_id", "child_id"], :name => "index_taskdeps_on_parent_id_and_child_id", :unique => true
  add_index "taskdeps", ["parent_id"], :name => "index_taskdeps_on_parent_id"

  create_table "tasks", :force => true do |t|
    t.string   "description"
    t.string   "completed"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "project_id"
    t.string   "comments"
    t.string   "status"
  end

  create_table "user_profiles", :force => true do |t|
    t.string   "address"
    t.string   "city"
    t.string   "email"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "phone"
    t.string   "state"
    t.string   "user_id"
    t.string   "zip"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
