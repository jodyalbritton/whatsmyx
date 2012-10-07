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

ActiveRecord::Schema.define(:version => 20121007034344) do

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
    t.integer  "actor_id"
    t.integer  "object_id"
    t.integer  "parent_id"
    t.string   "verb"
    t.integer  "scope"
    t.string   "tag_list"
  end

  add_index "activities", ["target_id", "target_type"], :name => "index_activities_on_target_id_and_target_type"
  add_index "activities", ["user_id"], :name => "index_activities_on_user_id"

  create_table "activities_tags", :force => true do |t|
    t.integer "activity_id"
    t.integer "tag_id"
  end

  add_index "activities_tags", ["activity_id"], :name => "index_activities_tags_on_activity_id"
  add_index "activities_tags", ["tag_id"], :name => "index_activities_tags_on_tag_id"

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
    t.string   "sunit"
  end

  add_index "categories", ["slug"], :name => "index_categories_on_slug", :unique => true

  create_table "circles", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "author_id"
  end

  add_index "circles", ["user_id"], :name => "index_circles_on_user_id"

  create_table "dgoals", :force => true do |t|
    t.integer  "user_id"
    t.float    "calories"
    t.float    "protein"
    t.float    "fat"
    t.float    "carbs"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "dgoals", ["user_id"], :name => "index_dgoals_on_user_id"

  create_table "fb_collectors", :force => true do |t|
    t.integer  "fitbitaccount_id"
    t.integer  "user_id"
    t.datetime "last_run"
    t.boolean  "enabled"
    t.boolean  "calories_in"
    t.boolean  "calories_out"
    t.boolean  "water"
    t.boolean  "steps"
    t.boolean  "distance"
    t.boolean  "floors"
    t.boolean  "elevation"
    t.boolean  "minutes_sedentary"
    t.boolean  "minutes_lightly_active"
    t.boolean  "minutes_fairly_active"
    t.boolean  "activity_score"
    t.boolean  "activity_calories"
    t.boolean  "time_in_bed"
    t.boolean  "bed_time"
    t.boolean  "start_time"
    t.boolean  "minutes_asleep"
    t.boolean  "minutes_to_sleep"
    t.boolean  "sleep_efficiency"
    t.boolean  "weight"
    t.boolean  "bmi"
    t.boolean  "fat"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  add_index "fb_collectors", ["fitbitaccount_id"], :name => "index_fb_collectors_on_fitbitaccount_id"
  add_index "fb_collectors", ["user_id"], :name => "index_fb_collectors_on_user_id"

  create_table "fitbitaccounts", :force => true do |t|
    t.integer  "user_id"
    t.string   "request_token"
    t.string   "request_secret"
    t.string   "access_token"
    t.string   "access_secret"
    t.string   "verifier"
    t.string   "fb_user_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "fitbitaccounts", ["user_id"], :name => "index_fitbitaccounts_on_user_id"

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

  create_table "foods", :force => true do |t|
    t.integer "ndb"
    t.string  "short_desc",    :limit => 60
    t.float   "water",                                                      :default => 0.0, :null => false
    t.float   "calories",                                                   :default => 0.0, :null => false
    t.float   "protein",                                                    :default => 0.0, :null => false
    t.float   "lipid_total",                                                :default => 0.0, :null => false
    t.float   "ash",                                                        :default => 0.0, :null => false
    t.float   "carbohydrates",                                              :default => 0.0, :null => false
    t.float   "fiber",                                                      :default => 0.0, :null => false
    t.float   "sugar_total",                                                :default => 0.0, :null => false
    t.float   "calcium",                                                    :default => 0.0, :null => false
    t.float   "iron",                                                       :default => 0.0, :null => false
    t.float   "magnesium",                                                  :default => 0.0, :null => false
    t.float   "phosphorus",                                                 :default => 0.0, :null => false
    t.float   "potassium",                                                  :default => 0.0, :null => false
    t.float   "sodium",                                                     :default => 0.0, :null => false
    t.decimal "zinc",                         :precision => 4, :scale => 2, :default => 0.0, :null => false
    t.string  "copper",        :limit => 9,                                 :default => "0", :null => false
    t.decimal "manganese",                    :precision => 6, :scale => 3, :default => 0.0, :null => false
    t.string  "selenium",      :limit => 66,                                :default => "0", :null => false
    t.float   "vitamin_c",                                                  :default => 0.0, :null => false
    t.decimal "thiamin",                      :precision => 7, :scale => 3, :default => 0.0, :null => false
    t.string  "riboflavin",    :limit => 47,                                :default => "0", :null => false
    t.string  "niacin",        :limit => 7,                                 :default => "0", :null => false
    t.string  "panto_acid",    :limit => 53,                                :default => "0", :null => false
    t.string  "vitamin_b6",    :limit => 74,                                :default => "0", :null => false
    t.string  "folate_total",  :limit => 62,                                :default => "0", :null => false
    t.string  "folic_acid",    :limit => 49,                                :default => "0", :null => false
    t.string  "food_folate",   :limit => 53,                                :default => "0", :null => false
    t.string  "folate_dfe",    :limit => 4
    t.string  "choline_total", :limit => 43
    t.string  "vitamin_b12",   :limit => 39,                                :default => "0"
    t.decimal "vitamin_a",                    :precision => 8, :scale => 3
    t.decimal "vitamin_a_rae",                :precision => 8, :scale => 3
    t.string  "retinol",       :limit => 48
    t.string  "alpha_carot",   :limit => 26
    t.string  "beta_carot",    :limit => 46
    t.string  "beta_crypt",    :limit => 77
    t.string  "lycopene",      :limit => 123
    t.string  "lut_zea",       :limit => 66
    t.string  "vitamin_e",     :limit => 120
    t.string  "vitamin_d_ug",  :limit => 82
    t.string  "vitamin_d_iu",  :limit => 113
    t.string  "vitamin_k_ug",  :limit => 100
    t.float   "fa_sat",                                                     :default => 0.0, :null => false
    t.float   "fa_mono",                                                    :default => 0.0, :null => false
    t.float   "fa_poly",                                                    :default => 0.0, :null => false
    t.float   "cholesterol",                                                :default => 0.0, :null => false
    t.integer "gmwt_1",                                                     :default => 0,   :null => false
    t.string  "gmwt_desc",     :limit => 104
    t.integer "gmwt_2",                                                     :default => 0,   :null => false
    t.string  "gmwt_desc2",    :limit => 131
    t.string  "refuse_pct",    :limit => 99
    t.string  "name",          :limit => 130
  end

  create_table "gcategories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "glevels", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "goals", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "value"
    t.integer  "category_id"
    t.string   "name"
    t.string   "sunit"
    t.string   "modifier"
  end

  add_index "goals", ["user_id"], :name => "index_goals_on_user_id"

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.string   "privacy_level"
    t.boolean  "active"
    t.text     "description"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.integer  "gcategory_id"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "avatar"
  end

  create_table "ingredients", :force => true do |t|
    t.string   "what_food"
    t.integer  "servings"
    t.integer  "food_id"
    t.integer  "serving_size"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "user_id"
    t.date     "date"
    t.integer  "mcategory_id"
    t.integer  "serv_size_id"
    t.integer  "meal_id",      :null => false
  end

  add_index "ingredients", ["food_id"], :name => "index_ingredients_on_food_id"

  create_table "mcategories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "meals", :force => true do |t|
    t.integer  "user_id"
    t.integer  "mcategory_id"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.string   "name"
    t.date     "date"
    t.integer  "scope",        :default => 0
    t.string   "attachment"
  end

  add_index "meals", ["mcategory_id"], :name => "index_meals_on_mcategory_id"
  add_index "meals", ["user_id"], :name => "index_meals_on_user_id"

  create_table "memberships", :force => true do |t|
    t.integer  "user_id"
    t.boolean  "pending",    :default => true
    t.integer  "group_id"
    t.boolean  "blocked",    :default => false
    t.integer  "glevel_id"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "memberships", ["glevel_id"], :name => "index_memberships_on_glevel_id"
  add_index "memberships", ["group_id"], :name => "index_memberships_on_group_id"
  add_index "memberships", ["user_id"], :name => "index_memberships_on_user_id"

  create_table "mental_activities", :force => true do |t|
    t.integer  "user_id"
    t.integer  "mental_activity_type_id"
    t.float    "value"
    t.date     "date"
    t.time     "time"
    t.integer  "duration"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.string   "name"
    t.integer  "scope"
    t.string   "verb"
    t.string   "source"
    t.string   "category"
    t.string   "attachment"
  end

  add_index "mental_activities", ["mental_activity_type_id"], :name => "index_mental_activities_on_mental_activity_type_id"
  add_index "mental_activities", ["user_id"], :name => "index_mental_activities_on_user_id"

  create_table "mental_activity_types", :force => true do |t|
    t.string   "name"
    t.string   "attribs"
    t.integer  "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "category"
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

  create_table "messages", :force => true do |t|
    t.string   "subject"
    t.text     "body"
    t.integer  "sender_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "notifications", :force => true do |t|
    t.integer  "activity_id"
    t.boolean  "seen"
    t.integer  "user_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "notifiable"
    t.string   "notifiable_type"
  end

  add_index "notifications", ["activity_id"], :name => "index_notifications_on_activity_id"
  add_index "notifications", ["user_id"], :name => "index_notifications_on_user_id"

  create_table "physical_activities", :force => true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.integer  "physical_activity_type_id"
    t.float    "duration"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
    t.time     "time"
    t.string   "category"
    t.date     "date"
    t.integer  "scope",                     :default => 0
    t.string   "attachment"
    t.float    "value"
    t.float    "calories"
    t.string   "source"
    t.string   "verb"
  end

  add_index "physical_activities", ["physical_activity_type_id"], :name => "index_pactivities_on_exercise_id"
  add_index "physical_activities", ["user_id"], :name => "index_pactivities_on_user_id"

  create_table "physical_activity_types", :force => true do |t|
    t.integer  "code"
    t.decimal  "mets",                      :precision => 4, :scale => 2
    t.string   "category",   :limit => 22
    t.string   "name",       :limit => 223
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", :force => true do |t|
    t.integer  "user_id"
    t.integer  "activity_object_id"
    t.text     "content"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "parent_id"
    t.integer  "scope"
    t.date     "date"
    t.string   "attachment"
    t.string   "tag_list"
    t.integer  "reply_to_id"
    t.text     "text",               :null => false
  end

  create_table "posts_tags", :force => true do |t|
    t.integer "post_id"
    t.integer "tag_id"
  end

  add_index "posts_tags", ["post_id"], :name => "index_posts_tags_on_post_id"
  add_index "posts_tags", ["tag_id"], :name => "index_posts_tags_on_tag_id"

  create_table "profiles", :force => true do |t|
    t.integer  "user_id"
    t.date     "birthday"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "organization",   :limit => 45
    t.string   "phone",          :limit => 45
    t.string   "mobile",         :limit => 45
    t.string   "fax",            :limit => 45
    t.string   "address"
    t.string   "city"
    t.string   "zipcode",        :limit => 45
    t.string   "province",       :limit => 45
    t.string   "country",        :limit => 45
    t.integer  "prefix_key"
    t.string   "description"
    t.string   "experience"
    t.string   "website"
    t.string   "skype",          :limit => 45
    t.string   "im",             :limit => 45
    t.text     "about"
    t.date     "dob"
    t.string   "fname"
    t.string   "lname"
    t.string   "name"
    t.float    "weight"
    t.float    "height"
    t.float    "waist_circ"
    t.float    "kneck_circ"
    t.float    "shoulders_circ"
    t.float    "chest_circ"
    t.float    "hips_circ"
    t.float    "bicep_circ"
    t.float    "thigh_circ"
    t.float    "calf_circ"
    t.float    "forearm_circ"
    t.string   "gender"
    t.string   "avatar"
  end

  add_index "profiles", ["user_id"], :name => "index_profiles_on_user_id"

  create_table "recipients", :force => true do |t|
    t.integer  "message_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "recipients", ["message_id"], :name => "index_recipients_on_message_id"
  add_index "recipients", ["user_id"], :name => "index_recipients_on_user_id"

  create_table "relationships", :force => true do |t|
    t.integer  "user_id"
    t.integer  "circle_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "relationships", ["circle_id"], :name => "index_relationships_on_circle_id"
  add_index "relationships", ["user_id"], :name => "index_relationships_on_user_id"

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

  create_table "serv_sizes", :force => true do |t|
    t.string   "name"
    t.float    "value"
    t.integer  "ingredient_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "serv_sizes", ["ingredient_id"], :name => "index_serv_sizes_on_ingredient_id"

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
    t.integer  "value"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.string   "sunit"
    t.integer  "user_id"
    t.integer  "scope",       :default => 0
    t.string   "attachment"
    t.string   "source"
    t.date     "date",                       :null => false
    t.integer  "category_id",                :null => false
  end

  create_table "tags", :force => true do |t|
    t.string   "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "slug"
  end

  add_index "tags", ["content"], :name => "index_tags_on_content", :unique => true

  create_table "users", :force => true do |t|
    t.string   "email",                                :default => "",    :null => false
    t.string   "encrypted_password",                   :default => ""
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                        :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                              :null => false
    t.datetime "updated_at",                                              :null => false
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
    t.integer  "points",                               :default => 0
    t.integer  "level",                                :default => 0
    t.string   "invitation_token",       :limit => 60
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit"
    t.integer  "invited_by_id"
    t.string   "invited_by_type"
    t.boolean  "opt_in"
    t.boolean  "privacy",                              :default => false
    t.boolean  "notify_by_email",                      :default => true
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["invitation_token"], :name => "index_users_on_invitation_token"
  add_index "users", ["invited_by_id"], :name => "index_users_on_invited_by_id"
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["slug"], :name => "index_users_on_slug", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

end
