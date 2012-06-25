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

ActiveRecord::Schema.define(:version => 20120624040847) do

  create_table "DATA_SRC", :id => false, :force => true do |t|
    t.string "DataSrc_ID",  :limit => 6,   :null => false
    t.string "Authors"
    t.string "Title",                      :null => false
    t.string "Year",        :limit => 4
    t.string "Journal",     :limit => 135
    t.string "Vol_City",    :limit => 16
    t.string "Issue_State", :limit => 5
    t.string "Start_Page",  :limit => 5
    t.string "End_Page",    :limit => 5
  end

  create_table "DERIV_CD", :id => false, :force => true do |t|
    t.string "Deriv_Cd",   :limit => 4,   :null => false
    t.string "Deriv_Desc", :limit => 120
  end

  create_table "FD_GROUP", :id => false, :force => true do |t|
    t.string "FdGrp_Cd",   :limit => 4,  :null => false
    t.string "FdGrp_Desc", :limit => 60, :null => false
  end

  create_table "FOOTNOTE", :id => false, :force => true do |t|
    t.string "NDB_No",     :limit => 5,   :null => false
    t.string "Footnt_No",  :limit => 4,   :null => false
    t.string "Footnt_Typ", :limit => 1,   :null => false
    t.string "Nutr_No",    :limit => 3
    t.string "Footnt_Txt", :limit => 200, :null => false
  end

  create_table "LANGDESC", :id => false, :force => true do |t|
    t.string "Factor_Code", :limit => 5,   :null => false
    t.string "Description", :limit => 140, :null => false
  end

  create_table "LANGUAL", :id => false, :force => true do |t|
    t.string "NDB_No",      :limit => 5, :null => false
    t.string "Factor_Code", :limit => 5, :null => false
  end

  create_table "SRC_CD", :id => false, :force => true do |t|
    t.string "Src_Cd",     :limit => 2,  :null => false
    t.string "SrcCd_Desc", :limit => 60, :null => false
  end

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
    t.integer  "parent_id"
    t.string   "verb"
  end

  add_index "activities", ["target_id", "target_type"], :name => "index_activities_on_target_id_and_target_type"
  add_index "activities", ["user_id"], :name => "index_activities_on_user_id"

  create_table "audiences", :force => true do |t|
    t.integer  "activity_id"
    t.integer  "relation_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
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

  create_table "embedded_objects", :force => true do |t|
    t.integer  "embeddable_id"
    t.string   "embeddable_type"
    t.integer  "like_count",      :default => 0
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
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

  create_table "food_dets", :force => true do |t|
    t.integer "ndb",                                                      :null => false
    t.string  "fdgrp_cd",    :limit => 4,                                 :null => false
    t.string  "longdesc",    :limit => 200,                               :null => false
    t.string  "shortdesc",   :limit => 60,                                :null => false
    t.string  "comname",     :limit => 100
    t.string  "manufacname", :limit => 65
    t.string  "survey",      :limit => 1
    t.string  "ref_desc",    :limit => 135
    t.integer "refuse"
    t.string  "SciName",     :limit => 65
    t.decimal "n_factor",                   :precision => 4, :scale => 2
    t.decimal "pro_factor",                 :precision => 4, :scale => 2
    t.decimal "fat_factor",                 :precision => 4, :scale => 2
    t.decimal "cho_factor",                 :precision => 4, :scale => 2
  end

  add_index "food_dets", ["ndb"], :name => "INDEX_FOOD_DETS_ON_NDB"

  create_table "foods", :force => true do |t|
    t.integer "user_id"
    t.integer "ndb"
    t.string  "name",          :limit => 60
    t.float   "water"
    t.float   "calories",                                                   :default => 0.0,   :null => false
    t.float   "protein",                                                    :default => 0.0,   :null => false
    t.float   "lipid_total",                                                :default => 0.0,   :null => false
    t.float   "ash"
    t.float   "carbohydrates"
    t.float   "fiber",                                                      :default => 0.0,   :null => false
    t.float   "sugar_total",                                                :default => 0.0,   :null => false
    t.float   "calcium",                                                    :default => 0.0,   :null => false
    t.decimal "iron",                        :precision => 4,  :scale => 2
    t.integer "magnesium"
    t.integer "phosphorus"
    t.float   "potassium"
    t.integer "sodium"
    t.decimal "zinc",                        :precision => 4,  :scale => 2
    t.string  "copper",        :limit => 9
    t.decimal "manganese",                   :precision => 6,  :scale => 3
    t.decimal "selenium",                    :precision => 5,  :scale => 1
    t.float   "vit_c"
    t.decimal "thiamin",                     :precision => 7,  :scale => 3
    t.string  "riboflavin",    :limit => 47
    t.string  "niacin",        :limit => 9
    t.decimal "panto_acid",                  :precision => 8,  :scale => 3
    t.decimal "vitamin_b6",                  :precision => 6,  :scale => 3
    t.string  "folate_total",  :limit => 5
    t.integer "folic_acid"
    t.decimal "food_folate",                 :precision => 5,  :scale => 2
    t.string  "folate_dfe",    :limit => 6
    t.decimal "choline_total",               :precision => 6,  :scale => 3
    t.decimal "vitamin_b12",                 :precision => 8,  :scale => 3
    t.decimal "vitamin_a",                   :precision => 8,  :scale => 3
    t.decimal "vitamin_a_rae",               :precision => 8,  :scale => 3
    t.string  "retinol",       :limit => 23
    t.string  "alpha_carot",   :limit => 26
    t.string  "beta_carot",    :limit => 40
    t.string  "beta_crypt",    :limit => 29
    t.string  "lycopene",      :limit => 44
    t.string  "lut_zea",       :limit => 33
    t.string  "vitamin_e",     :limit => 52
    t.string  "vitamin_d_ug",  :limit => 44
    t.string  "vitamin_d_iu",  :limit => 33
    t.string  "vitamin_k_ug",  :limit => 16
    t.float   "fa_sat",                                                     :default => 0.0,   :null => false
    t.decimal "fa_mono",                     :precision => 30, :scale => 0
    t.float   "fa_poly"
    t.float   "cholesterol",                                                :default => 0.0,   :null => false
    t.string  "gmwt_1",        :limit => 77
    t.string  "gmwt_desc",     :limit => 80
    t.float   "serving_grams"
    t.string  "gmwt_desc2",    :limit => 79
    t.integer "refuse_pct"
    t.boolean "umd",                                                        :default => false, :null => false
    t.string  "slug"
  end

  add_index "foods", ["slug"], :name => "index_foods_on_slug", :unique => true

  create_table "foods_bak", :force => true do |t|
    t.string  "name"
    t.float   "water"
    t.float   "calories"
    t.float   "protein"
    t.float   "lipid_total"
    t.float   "ash"
    t.float   "carbohydrates"
    t.float   "fiber"
    t.float   "sugar_total"
    t.float   "calcium"
    t.float   "iron"
    t.float   "magnesium"
    t.float   "phosphorus"
    t.float   "potassium"
    t.float   "sodium"
    t.float   "zinc"
    t.float   "copper"
    t.float   "manganese"
    t.float   "selenium"
    t.float   "vit_c"
    t.float   "thiamin"
    t.float   "riboflavin"
    t.float   "niacin"
    t.float   "panto_acid"
    t.float   "vit_b6"
    t.float   "folate_total"
    t.float   "folic_acid"
    t.float   "food_folate"
    t.float   "folate_dfe"
    t.float   "choline_total"
    t.float   "vit_b12"
    t.float   "vit_a_iu"
    t.float   "vit_a_rae"
    t.float   "retinol"
    t.float   "alpha_carotene"
    t.float   "beta_carotene"
    t.float   "beta_crypt"
    t.float   "lycopene"
    t.float   "lut_zea"
    t.float   "vit_e"
    t.float   "vit_d_mcg"
    t.float   "vit_d_iu"
    t.float   "vit_k"
    t.float   "fa_sat"
    t.float   "fa_mono"
    t.float   "fa_poly"
    t.float   "cholesterol"
    t.float   "weight_1_gms"
    t.string  "weight_1_desc"
    t.float   "weight_2_gms"
    t.string  "weight_2_desc"
    t.float   "refuse_pct"
    t.integer "umd",            :default => 0
    t.integer "user_id"
  end

  create_table "footnotes", :force => true do |t|
    t.string "ndb_no",      :limit => 5,                         :null => false
    t.string "footnt_no",   :limit => 4,                         :null => false
    t.string "footnt_typ",  :limit => 1,                         :null => false
    t.string "nutr_no",     :limit => 3
    t.string "footnt_txt",  :limit => 200,                       :null => false
    t.string "usda_status", :limit => 0,   :default => "active"
  end

  add_index "footnotes", ["ndb_no"], :name => "ndb_no"

  create_table "gcategories", :force => true do |t|
    t.string   "name",       :limit => 10
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
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
  end

  create_table "ingredients", :force => true do |t|
    t.string   "what_food"
    t.integer  "servings"
    t.integer  "food_id"
    t.decimal  "serving_size",    :precision => 11, :scale => 0
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
    t.integer  "meal_id"
    t.integer  "user_id"
    t.date     "date"
    t.integer  "mcategory_id"
    t.integer  "serving_size_id"
    t.integer  "serv_size_id"
  end

  add_index "ingredients", ["food_id"], :name => "index_ingredients_on_food_id"

  create_table "mcategories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

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

  create_table "notifications", :force => true do |t|
    t.string   "target_type"
    t.integer  "target_id"
    t.integer  "recipient_id"
    t.integer  "user_id"
    t.string   "action"
    t.boolean  "unread",       :default => true
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  add_index "notifications", ["target_id"], :name => "index_notifications_on_target_id"
  add_index "notifications", ["target_type"], :name => "index_notifications_on_target_type"
  add_index "notifications", ["user_id"], :name => "index_notifications_on_user_id"

  create_table "nutr_defs", :force => true do |t|
    t.string  "nutr_no",  :limit => 3,  :null => false
    t.string  "units",    :limit => 7,  :null => false
    t.string  "tagname",  :limit => 20
    t.string  "nutrdesc", :limit => 60, :null => false
    t.string  "num_dec",  :limit => 1,  :null => false
    t.integer "sr_order",               :null => false
  end

  create_table "nutrients", :force => true do |t|
    t.integer "ndb",                                                        :null => false
    t.string  "nutr_no",       :limit => 3,                                 :null => false
    t.decimal "nutr_val",                    :precision => 10, :scale => 3, :null => false
    t.decimal "num_data_pts",                :precision => 5,  :scale => 0, :null => false
    t.decimal "Std_Error",                   :precision => 8,  :scale => 3
    t.string  "Src_Cd",        :limit => 2,                                 :null => false
    t.string  "Deriv_Cd",      :limit => 4
    t.string  "Ref_NDB_No",    :limit => 5
    t.string  "Add_Nutr_Mark", :limit => 1
    t.integer "Num_Studies"
    t.decimal "Min",                         :precision => 10, :scale => 3
    t.decimal "Max",                         :precision => 10, :scale => 3
    t.integer "DF"
    t.decimal "Low_EB",                      :precision => 10, :scale => 3
    t.decimal "Up_EB",                       :precision => 10, :scale => 3
    t.string  "Stat_cmt",      :limit => 10
    t.string  "CC",            :limit => 1
  end

  create_table "posts", :force => true do |t|
    t.integer  "user_id"
    t.integer  "activity_object_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "text"
    t.integer  "parent_id"
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

  create_table "relations", :force => true do |t|
    t.integer  "audience_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "relations", ["audience_id"], :name => "index_relations_on_audience_id"

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
    t.string   "value"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.date     "date"
    t.string   "sunit"
    t.integer  "user_id"
    t.integer  "category_id", :null => false
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

  create_table "weights", :force => true do |t|
    t.integer "ndb",                                                      :null => false
    t.string  "seq",          :limit => 2,                                :null => false
    t.decimal "amount",                     :precision => 5, :scale => 3, :null => false
    t.string  "msre_desc",    :limit => 80,                               :null => false
    t.decimal "gm_wgt",                     :precision => 7, :scale => 1, :null => false
    t.integer "num_data_pts"
    t.decimal "std_dev",                    :precision => 7, :scale => 3
  end

end
