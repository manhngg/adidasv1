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

ActiveRecord::Schema.define(version: 2018_12_21_224014) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "ages", force: :cascade do |t|
    t.text "name"
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "brands", force: :cascade do |t|
    t.text "name"
  end

  create_table "cart_items", force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "cart_id"
    t.integer "quantity"
    t.bigint "variant_id"
    t.index ["cart_id"], name: "index_cart_items_on_cart_id"
    t.index ["product_id"], name: "index_cart_items_on_product_id"
    t.index ["variant_id"], name: "index_cart_items_on_variant_id"
  end

  create_table "carts", force: :cascade do |t|
    t.bigint "user_id"
    t.index ["user_id"], name: "index_carts_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.text "name"
  end

  create_table "colors", force: :cascade do |t|
    t.text "name"
  end

  create_table "comments", force: :cascade do |t|
    t.string "commenter"
    t.text "body"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_comments_on_product_id"
  end

  create_table "franchises", force: :cascade do |t|
    t.text "name"
  end

  create_table "genders", force: :cascade do |t|
    t.text "name"
  end

  create_table "orders", force: :cascade do |t|
    t.string "address"
    t.string "phone"
    t.string "method"
    t.string "status"
    t.string "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.text "name"
    t.text "description_h5"
    t.text "description_p"
    t.text "specifications"
    t.text "care"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "franchise_id"
    t.bigint "producttype_id"
    t.bigint "brand_id"
    t.bigint "category_id"
    t.bigint "sport_id"
    t.bigint "gender_id"
    t.bigint "age_id"
    t.index ["age_id"], name: "index_products_on_age_id"
    t.index ["brand_id"], name: "index_products_on_brand_id"
    t.index ["category_id"], name: "index_products_on_category_id"
    t.index ["franchise_id"], name: "index_products_on_franchise_id"
    t.index ["gender_id"], name: "index_products_on_gender_id"
    t.index ["producttype_id"], name: "index_products_on_producttype_id"
    t.index ["sport_id"], name: "index_products_on_sport_id"
  end

  create_table "producttypes", force: :cascade do |t|
    t.text "name"
  end

  create_table "sports", force: :cascade do |t|
    t.text "name"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.string "provider"
    t.string "uid"
    t.string "name"
    t.string "lastname"
    t.string "address"
    t.string "phone"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "variants", force: :cascade do |t|
    t.float "price"
    t.float "originalprice"
    t.text "sku"
    t.integer "stock"
    t.bigint "product_id"
    t.bigint "color_id"
    t.index ["color_id"], name: "index_variants_on_color_id"
    t.index ["product_id"], name: "index_variants_on_product_id"
  end

  create_table "wish_items", force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "wish_id"
    t.bigint "variant_id"
    t.index ["product_id"], name: "index_wish_items_on_product_id"
    t.index ["variant_id"], name: "index_wish_items_on_variant_id"
    t.index ["wish_id"], name: "index_wish_items_on_wish_id"
  end

  create_table "wishes", force: :cascade do |t|
    t.bigint "user_id"
    t.index ["user_id"], name: "index_wishes_on_user_id"
  end

  add_foreign_key "cart_items", "carts"
  add_foreign_key "cart_items", "products"
  add_foreign_key "cart_items", "variants"
  add_foreign_key "carts", "users"
  add_foreign_key "comments", "products"
  add_foreign_key "orders", "users"
  add_foreign_key "products", "ages"
  add_foreign_key "products", "brands"
  add_foreign_key "products", "categories"
  add_foreign_key "products", "franchises"
  add_foreign_key "products", "genders"
  add_foreign_key "products", "producttypes"
  add_foreign_key "products", "sports"
  add_foreign_key "variants", "colors"
  add_foreign_key "variants", "products"
  add_foreign_key "wish_items", "products"
  add_foreign_key "wish_items", "variants"
  add_foreign_key "wish_items", "wishes"
  add_foreign_key "wishes", "users"
end
