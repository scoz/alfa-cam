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

ActiveRecord::Schema.define(:version => 20120316200554) do

  create_table "academic_terms", :force => true do |t|
    t.string   "title"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "outcome_group_id"
    t.date     "start_date"
    t.date     "end_date"
  end

  create_table "assessments", :force => true do |t|
    t.integer  "offering_id"
    t.text     "comments"
    t.text     "improved"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "content", :force => true do |t|
    t.integer  "position"
    t.string   "title"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "content_group_id"
  end

  create_table "content_group_names", :force => true do |t|
    t.string   "name"
    t.boolean  "active"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "content_groups", :force => true do |t|
    t.integer  "offering_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.integer  "content_group_name_id"
  end

  create_table "course_replacements", :force => true do |t|
    t.integer  "replace_id"
    t.integer  "with_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "courses", :force => true do |t|
    t.string   "dept_code"
    t.string   "course_num"
    t.string   "title"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "group"
    t.integer  "created_term_id"
    t.integer  "retired_term_id"
  end

  create_table "mappings", :force => true do |t|
    t.integer  "outcome_id"
    t.integer  "mappable_id"
    t.string   "mappable_type"
    t.integer  "value"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "objective_assessments", :force => true do |t|
    t.integer  "assessment_id"
    t.integer  "objective_id"
    t.text     "assessed"
    t.text     "well_met"
    t.text     "improved"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "objectives", :force => true do |t|
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "offering_id"
    t.integer  "position"
    t.text     "description"
  end

  create_table "offerings", :force => true do |t|
    t.integer  "course_id"
    t.integer  "term_id"
    t.string   "section"
    t.string   "crn"
    t.string   "location"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "credits"
    t.string   "day_and_time"
    t.text     "textbook"
    t.text     "additional_textbooks"
    t.text     "prerequisites"
    t.boolean  "review_done"
    t.boolean  "importing_done"
    t.boolean  "details_done"
    t.boolean  "objectives_done"
    t.boolean  "content_done"
    t.boolean  "assessments_done"
    t.text     "description"
    t.integer  "stages_left"
    t.string   "required_for_bsce"
    t.string   "required_for_bsenve"
  end

  create_table "outcome_groups", :force => true do |t|
    t.integer  "initial_term_id"
    t.string   "title"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "outcome_mappings", :force => true do |t|
    t.integer  "outcome_group_id"
    t.integer  "outcome_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "outcomes", :force => true do |t|
    t.string   "key"
    t.text     "description"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "outcome_group_id"
    t.integer  "position"
  end

  create_table "teachings", :force => true do |t|
    t.integer  "offering_id"
    t.integer  "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "name"
    t.string   "persistence_token"
    t.datetime "last_login_at"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "roles_mask"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "email"
  end

end
