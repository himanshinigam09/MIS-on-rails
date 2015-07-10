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

ActiveRecord::Schema.define(:version => 20150709165526) do

  create_table "communications", :force => true do |t|
    t.integer  "dc_member_id"
    t.integer  "correspondence_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "communications", ["correspondence_id"], :name => "index_communications_on_correspondence_id"
  add_index "communications", ["dc_member_id"], :name => "index_communications_on_dc_member_id"

  create_table "correspondences", :force => true do |t|
    t.string   "type_of_corr"
    t.string   "subject"
    t.string   "user_initials"
    t.string   "medium"
    t.string   "address"
    t.string   "description"
    t.date     "date"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "dc_members", :force => true do |t|
    t.string   "first_name"
    t.string   "mid_name"
    t.string   "last_name"
    t.date     "date_of_birth"
    t.string   "gender"
    t.string   "blood_group"
    t.string   "local_address"
    t.string   "permanent_address"
    t.string   "father_name"
    t.string   "mother_name"
    t.string   "guardian_name"
    t.string   "course_name"
    t.string   "github_link"
    t.string   "linkedin_link"
    t.string   "sem_of_joining"
    t.string   "email"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "dcs", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "profiles", :force => true do |t|
    t.string   "first_name"
    t.string   "mid_name"
    t.string   "last_name"
    t.date     "date_of_birth"
    t.string   "gender"
    t.string   "blood_group"
    t.string   "local_address"
    t.string   "permanent_address"
    t.string   "father_name"
    t.string   "mother_name"
    t.string   "guardian_name"
    t.string   "course_name"
    t.string   "sem_of_joining"
    t.string   "email"
    t.string   "github_id"
    t.string   "linkedin_id"
    t.string   "facebook_id"
    t.string   "googleplus_id"
    t.string   "twitter_id"
    t.string   "blog_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
