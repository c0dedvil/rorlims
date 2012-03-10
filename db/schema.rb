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

ActiveRecord::Schema.define(:version => 20120310134025) do

  create_table "customers", :force => true do |t|
    t.string   "company",       :limit => 60
    t.string   "id_company",    :limit => 20
    t.string   "applicant",     :limit => 60
    t.string   "position",      :limit => 60
    t.string   "address",       :limit => 60
    t.string   "phones",        :limit => 50
    t.string   "fax",           :limit => 20
    t.string   "city",          :limit => 30
    t.string   "email",         :limit => 100
    t.string   "contract",      :limit => 50
    t.date     "date_contract"
    t.string   "quote_number",  :limit => 20
    t.date     "date_quote"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parameters", :force => true do |t|
    t.string   "parameter",  :limit => 100
    t.string   "units",      :limit => 30
    t.string   "technic",    :limit => 60
    t.string   "area",       :limit => 20
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username",        :limit => 20
    t.string   "password",        :limit => 20
    t.string   "email",           :limit => 100
    t.string   "activation_hash", :limit => 128
    t.integer  "level"
    t.string   "area",            :limit => 20
    t.string   "first_name",      :limit => 30
    t.string   "surname",         :limit => 30
    t.string   "telephones",      :limit => 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
