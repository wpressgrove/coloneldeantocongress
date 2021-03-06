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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150809235217) do

  create_table "donations", force: :cascade do |t|
    t.string   "stripe_token", limit: 255
    t.string   "email",        limit: 255
    t.integer  "amount",       limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "emails", force: :cascade do |t|
    t.string   "email",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.string   "location",    limit: 255
    t.datetime "time"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug",        limit: 255
  end

  add_index "events", ["slug"], name: "index_events_on_slug", using: :btree
  add_index "events", ["time"], name: "index_events_on_time", using: :btree
  add_index "events", ["title"], name: "index_events_on_title", using: :btree

  create_table "media", force: :cascade do |t|
    t.string   "title",             limit: 255
    t.string   "type",              limit: 255
    t.string   "file_file_name",    limit: 255
    t.string   "file_content_type", limit: 255
    t.integer  "file_file_size",    limit: 4
    t.datetime "file_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "media", ["title"], name: "index_media_on_title", using: :btree
  add_index "media", ["type"], name: "index_media_on_type", using: :btree

  create_table "nav_tabs", force: :cascade do |t|
    t.integer  "page_id",    limit: 4
    t.string   "label",      limit: 255
    t.integer  "rank",       limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "nav_tabs", ["label"], name: "index_nav_tabs_on_label", using: :btree
  add_index "nav_tabs", ["page_id"], name: "index_nav_tabs_on_page_id", using: :btree
  add_index "nav_tabs", ["rank"], name: "index_nav_tabs_on_rank", using: :btree

  create_table "pages", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "has_header", limit: 1,     default: true
    t.boolean  "has_footer", limit: 1,     default: true
    t.boolean  "required",   limit: 1,     default: false
    t.string   "slug",       limit: 255
    t.text     "body",       limit: 65535
    t.string   "title",      limit: 255
  end

  add_index "pages", ["name"], name: "index_pages_on_name", using: :btree
  add_index "pages", ["required"], name: "index_pages_on_required", using: :btree
  add_index "pages", ["slug"], name: "index_pages_on_slug", using: :btree

  create_table "questions", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.text     "subject"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "questions", ["email"], name: "index_questions_on_email", using: :btree
  add_index "questions", ["name"], name: "index_questions_on_name", using: :btree
  add_index "questions", ["state"], name: "index_questions_on_state", using: :btree

  create_table "roles", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.integer  "resource_id",   limit: 4
    t.string   "resource_type", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

  create_table "sidebar_items", force: :cascade do |t|
    t.integer  "page_id",    limit: 4
    t.integer  "rank",       limit: 4
    t.string   "name",       limit: 255
    t.text     "body",       limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "slideshow_items", force: :cascade do |t|
    t.integer  "page_id",    limit: 4
    t.integer  "image_id",   limit: 4
    t.integer  "rank",       limit: 4
    t.string   "subtitle",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "slideshow_items", ["image_id"], name: "index_slideshow_items_on_image_id", using: :btree
  add_index "slideshow_items", ["page_id"], name: "index_slideshow_items_on_page_id", using: :btree
  add_index "slideshow_items", ["rank"], name: "index_slideshow_items_on_rank", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255,             null: false
    t.string   "encrypted_password",     limit: 255,             null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.integer  "failed_attempts",        limit: 4,   default: 0, null: false
    t.string   "unlock_token",           limit: 255
    t.datetime "locked_at"
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id", limit: 4
    t.integer "role_id", limit: 4
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree

  create_table "versions", force: :cascade do |t|
    t.string   "item_type",  limit: 255,   null: false
    t.integer  "item_id",    limit: 4,     null: false
    t.string   "event",      limit: 255,   null: false
    t.string   "whodunnit",  limit: 255
    t.text     "object",     limit: 65535
    t.datetime "created_at"
  end

  add_index "versions", ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id", using: :btree

end
