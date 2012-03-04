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

ActiveRecord::Schema.define(:version => 20120304200444) do

  create_table "dzials", :force => true do |t|
    t.string "nazwa"
  end

  create_table "kurs", :force => true do |t|
    t.string   "nazwa"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "odpowiedzs", :force => true do |t|
    t.text     "tresc"
    t.string   "roziwazanie"
    t.integer  "nr"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "podejscies", :force => true do |t|
    t.date     "data"
    t.boolean  "zaliczony"
    t.integer  "wynik"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pytanies", :force => true do |t|
    t.text     "tresc"
    t.integer  "punkty"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tests", :force => true do |t|
    t.string   "nazwa"
    t.string   "poziom"
    t.date     "data_otwarcia"
    t.date     "data_zamkniecia"
    t.float    "prog"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username",                        :null => false
    t.string   "email"
    t.string   "crypted_password"
    t.string   "salt"
    t.text     "type"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
  end

  add_index "users", ["remember_me_token"], :name => "index_users_on_remember_me_token"
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token"

end
