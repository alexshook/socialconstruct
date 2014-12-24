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

ActiveRecord::Schema.define(version: 20141224014016) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blogs", force: true do |t|
    t.string   "name"
    t.string   "type"
    t.string   "url"
    t.string   "feed_url"
    t.integer  "member_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "blogs", ["member_id"], name: "index_blogs_on_member_id", using: :btree

  create_table "categories", force: true do |t|
    t.string   "name"
    t.integer  "tag_id"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categories", ["post_id"], name: "index_categories_on_post_id", using: :btree
  add_index "categories", ["tag_id"], name: "index_categories_on_tag_id", using: :btree

  create_table "invitations", force: true do |t|
    t.string   "recipient_email"
    t.string   "token"
    t.integer  "sender_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "invitations", ["sender_id"], name: "index_invitations_on_sender_id", using: :btree

  create_table "members", force: true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.integer  "role"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "invitation_limit", default: 0
  end

  create_table "posts", force: true do |t|
    t.string   "title"
    t.text     "snippet"
    t.string   "url"
    t.string   "image_url"
    t.integer  "blog_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "posts", ["blog_id"], name: "index_posts_on_blog_id", using: :btree

  create_table "tags", force: true do |t|
    t.string   "name"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tags", ["post_id"], name: "index_tags_on_post_id", using: :btree

end
