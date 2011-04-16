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

ActiveRecord::Schema.define(:version => 20110416102114) do

  create_table "articles", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "little_pic"
    t.integer  "category_id"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "material"
    t.text     "short_description"
  end

  create_table "articles_orders", :id => false, :force => true do |t|
    t.integer "article_id"
    t.integer "order_id"
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "information", :force => true do |t|
    t.string   "name"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "short"
  end

  create_table "orders", :force => true do |t|
    t.string   "email"
    t.string   "firstname"
    t.string   "lastname"
    t.text     "address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "fathername"
    t.string   "country"
    t.string   "index"
    t.string   "phone"
  end

  create_table "pages", :force => true do |t|
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "questions", :force => true do |t|
    t.string   "email"
    t.text     "content"
    t.text     "answer"
    t.boolean  "visible"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "tiny_prints", :force => true do |t|
    t.string   "image_file_name"
    t.string   "image_file_size"
    t.string   "image_content_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tiny_videos", :force => true do |t|
    t.string   "original_file_name"
    t.string   "original_file_size"
    t.string   "original_content_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

end
