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

ActiveRecord::Schema.define(:version => 20120819104219) do

  create_table "affiliations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "email"
    t.string   "phone_number"
    t.string   "company"
    t.string   "position"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "affiliation_id"
    t.integer  "country_id"
  end

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.string   "currency"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "educations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "employments", :force => true do |t|
    t.integer  "job_id"
    t.integer  "service_partner_id"
    t.boolean  "paid"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "fair_wages", :force => true do |t|
    t.date     "date"
    t.decimal  "amount",     :precision => 10, :scale => 0
    t.integer  "country_id"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  add_index "fair_wages", ["country_id"], :name => "index_fair_wages_on_country_id"

  create_table "fields", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "job_statuses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "job_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "jobs", :force => true do |t|
    t.string   "name"
    t.integer  "client_id"
    t.datetime "deadline_client"
    t.datetime "deadline_intern"
    t.integer  "job_type_id"
    t.integer  "job_status_id"
    t.boolean  "client_paid"
    t.integer  "rating_client"
    t.text     "rating_text"
    t.datetime "created_at",                                                 :null => false
    t.datetime "updated_at",                                                 :null => false
    t.decimal  "special_price",               :precision => 10, :scale => 0
    t.integer  "language_id"
    t.integer  "trancription_information_id"
  end

  add_index "jobs", ["client_id"], :name => "index_jobs_on_client_id"
  add_index "jobs", ["job_status_id"], :name => "index_jobs_on_job_status_id"
  add_index "jobs", ["job_type_id"], :name => "index_jobs_on_job_type_id"

  create_table "languages", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "qualification_tests", :force => true do |t|
    t.integer  "language_id"
    t.string   "job_type_id"
    t.integer  "result"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "service_partners", :force => true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "email"
    t.string   "phone_number"
    t.integer  "country_id"
    t.string   "city"
    t.boolean  "is_urban"
    t.integer  "education_id"
    t.text     "education_background"
    t.text     "work_experience"
    t.text     "internet_access"
    t.text     "internet_use"
    t.datetime "created_at",                                          :null => false
    t.datetime "updated_at",                                          :null => false
    t.date     "date_of_birth"
    t.integer  "education_field_id"
    t.integer  "work_field_id"
    t.integer  "affiliation_id"
    t.decimal  "internet_price",       :precision => 10, :scale => 0
    t.boolean  "active"
    t.text     "work_perspective"
    t.boolean  "is_female"
  end

  add_index "service_partners", ["country_id"], :name => "index_service_partners_on_country_id"
  add_index "service_partners", ["education_id"], :name => "index_service_partners_on_education_id"

  create_table "spotchecks", :force => true do |t|
    t.integer  "job_id"
    t.integer  "service_partner_id"
    t.integer  "rating"
    t.text     "rating_text"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "transcription_informations", :force => true do |t|
    t.time     "duration"
    t.integer  "category_id"
    t.time     "starting_point"
    t.time     "ending_point"
    t.boolean  "is_detailed_transcription"
    t.integer  "audio_quality"
    t.integer  "speaker_accent"
    t.integer  "number_speaker"
    t.boolean  "is_content_focused"
    t.boolean  "with_pause_interjection"
    t.boolean  "with_emotion_interjection"
    t.boolean  "with_pause"
    t.boolean  "with_interruption"
    t.boolean  "with_time_stamp"
    t.integer  "field_id"
    t.text     "background_information"
    t.text     "recurring_denominations"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "users", :force => true do |t|
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

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "will_filter_filters", :force => true do |t|
    t.string   "type"
    t.string   "name"
    t.text     "data"
    t.integer  "user_id"
    t.string   "model_class_name"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "will_filter_filters", ["user_id"], :name => "index_will_filter_filters_on_user_id"

end
