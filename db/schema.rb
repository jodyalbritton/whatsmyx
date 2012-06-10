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

ActiveRecord::Schema.define(:version => 20120609232519) do

  create_table "abilities", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "activities", :force => true do |t|
    t.integer  "user_id",       :null => false
    t.integer  "activity_type", :null => false
    t.integer  "target_id",     :null => false
    t.string   "target_type",   :null => false
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "activities", ["target_id", "target_type"], :name => "index_activities_on_target_id_and_target_type"
  add_index "activities", ["user_id"], :name => "index_activities_on_user_id"

  create_table "activity_objects", :force => true do |t|
    t.integer  "activity_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "activity_objects", ["activity_id"], :name => "index_activity_objects_on_activity_id"

  create_table "activity_verbs", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "badges_sashes", :id => false, :force => true do |t|
    t.integer  "badge_id"
    t.integer  "sash_id"
    t.boolean  "notified_user", :default => false
    t.datetime "created_at"
  end

  add_index "badges_sashes", ["badge_id", "sash_id"], :name => "index_badges_sashes_on_badge_id_and_sash_id"
  add_index "badges_sashes", ["badge_id"], :name => "index_badges_sashes_on_badge_id"
  add_index "badges_sashes", ["sash_id"], :name => "index_badges_sashes_on_sash_id"

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "slug"
  end

  add_index "categories", ["slug"], :name => "index_categories_on_slug", :unique => true

  create_table "checklists", :force => true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.date     "date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "comments", :force => true do |t|
    t.integer  "owner_id",           :null => false
    t.integer  "commentable_id",     :null => false
    t.string   "commentable_type",   :null => false
    t.text     "body",               :null => false
    t.integer  "activity_object_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "follows", :force => true do |t|
    t.integer  "followable_id",                      :null => false
    t.string   "followable_type",                    :null => false
    t.integer  "follower_id",                        :null => false
    t.string   "follower_type",                      :null => false
    t.boolean  "blocked",         :default => false, :null => false
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  add_index "follows", ["followable_id", "followable_type"], :name => "fk_followables"
  add_index "follows", ["follower_id", "follower_type"], :name => "fk_follows"

  create_table "goals", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "value"
    t.integer  "category_id"
  end

  add_index "goals", ["user_id"], :name => "index_goals_on_user_id"

  create_table "mcategories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "meals", :force => true do |t|
    t.string   "name"
    t.integer  "ndb"
    t.integer  "quanity"
    t.string   "units"
    t.date     "date"
    t.string   "mcategory_id"
    t.string   "integer"
    t.integer  "user_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "merit_actions", :force => true do |t|
    t.integer  "user_id"
    t.string   "action_method"
    t.integer  "action_value"
    t.boolean  "had_errors"
    t.string   "target_model"
    t.integer  "target_id"
    t.boolean  "processed",     :default => false
    t.string   "log"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  create_table "mposts", :force => true do |t|
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "mposts", ["user_id"], :name => "index_mposts_on_user_id"

  create_table "notes", :force => true do |t|
    t.string   "name"
    t.text     "content"
    t.integer  "user_id"
    t.date     "date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "posts", :force => true do |t|
    t.integer  "user_id"
    t.integer  "activity_object_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "text"
  end

  add_index "posts", ["activity_object_id"], :name => "index_posts_on_activity_object_id"

  create_table "profiles", :force => true do |t|
    t.integer  "user_id"
    t.date     "birthday"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "organization",        :limit => 45
    t.string   "phone",               :limit => 45
    t.string   "mobile",              :limit => 45
    t.string   "fax",                 :limit => 45
    t.string   "address"
    t.string   "city"
    t.string   "zipcode",             :limit => 45
    t.string   "province",            :limit => 45
    t.string   "country",             :limit => 45
    t.integer  "prefix_key"
    t.string   "description"
    t.string   "experience"
    t.string   "website"
    t.string   "skype",               :limit => 45
    t.string   "im",                  :limit => 45
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.text     "about"
    t.date     "dob"
    t.string   "fname"
    t.string   "lname"
    t.string   "name"
  end

  add_index "profiles", ["user_id"], :name => "index_profiles_on_user_id"

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "sashes", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "services", :force => true do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.string   "uname"
    t.string   "uemail"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "settings", :force => true do |t|
    t.integer  "user_id"
    t.boolean  "acct_enabled", :default => true
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  add_index "settings", ["user_id"], :name => "index_settings_on_user_id"

  create_table "stats", :force => true do |t|
    t.string   "name"
    t.string   "stype"
    t.string   "value"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "sunit"
    t.integer  "user_id"
    t.integer  "category_id"
    t.date     "date"
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
    t.string   "name"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "username"
    t.string   "slug"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "sash_id"
    t.integer  "points",                 :default => 0
    t.integer  "level",                  :default => 0
    t.integer  "actor_id"
    t.string   "activity_stream_token"
  end

  add_index "users", ["actor_id"], :name => "index_users_on_actor_id"
  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["slug"], :name => "index_users_on_slug", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

end
