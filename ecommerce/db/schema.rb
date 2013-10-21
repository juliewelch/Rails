# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131021182520) do

  create_table "Company", :id => false, :force => true do |t|
    t.integer "BankID"
    t.string  "company-name", :limit => 30
    t.string  "city",         :limit => 20
  end

  create_table "Employee", :id => false, :force => true do |t|
    t.string "person-name", :limit => 20
    t.string "street",      :limit => 5
    t.string "city",        :limit => 20
  end

  create_table "Works", :id => false, :force => true do |t|
    t.string  "person-name", :limit => 20
    t.integer "BankID"
    t.integer "Salary"
  end

  create_table "catalogs", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inventories", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shoppingcarts", :force => true do |t|
    t.string   "owner"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
