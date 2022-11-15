# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_11_15_133607) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "data_element_groups", force: :cascade do |t|
    t.string "name"
    t.string "retrieve"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "data_element_tbls", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "data_elements", force: :cascade do |t|
    t.string "name"
    t.string "value_type"
    t.string "source"
    t.string "is_immunising_data_element"
    t.string "section"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "location_product_counts", force: :cascade do |t|
    t.bigint "location_id", null: false
    t.bigint "product_id", null: false
    t.integer "counted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_location_product_counts_on_location_id"
    t.index ["product_id"], name: "index_location_product_counts_on_product_id"
  end

  create_table "location_products", force: :cascade do |t|
    t.bigint "location_id", null: false
    t.bigint "product_id", null: false
    t.integer "active"
    t.decimal "wastage_factor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_location_products_on_location_id"
    t.index ["product_id"], name: "index_location_products_on_product_id"
  end

  create_table "locations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "maintaince_service_providers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "manufactures", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "model_has_permissions", force: :cascade do |t|
    t.bigint "permissions_tbl_id", null: false
    t.string "model_type"
    t.bigint "models_tbls_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["models_tbls_id"], name: "index_model_has_permissions_on_models_tbls_id"
    t.index ["permissions_tbl_id"], name: "index_model_has_permissions_on_permissions_tbl_id"
  end

  create_table "model_has_roles", force: :cascade do |t|
    t.bigint "role_id", null: false
    t.string "model_type"
    t.bigint "models_tbls_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["models_tbls_id"], name: "index_model_has_roles_on_models_tbls_id"
    t.index ["role_id"], name: "index_model_has_roles_on_role_id"
  end

  create_table "models_tbls", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notifiables", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notifications", force: :cascade do |t|
    t.string "type"
    t.string "notifiable_type"
    t.bigint "notifiable_id", null: false
    t.string "data"
    t.date "read_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["notifiable_id"], name: "index_notifications_on_notifiable_id"
  end

  create_table "oath_access_tokens", force: :cascade do |t|
    t.string "name"
    t.string "scope"
    t.integer "revoked"
    t.date "expires_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "oauth_personal_access_clients", force: :cascade do |t|
    t.bigint "client_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_oauth_personal_access_clients_on_client_id"
  end

  create_table "other_locations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "permissions", force: :cascade do |t|
    t.string "name"
    t.string "guard_name"
    t.string "resource"
    t.string "location_scope"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "permissions_tbls", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_data_elements", force: :cascade do |t|
    t.bigint "product_id", null: false
    t.bigint "data_element_tbl_id"
    t.integer "dose_number"
    t.string "key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["data_element_tbl_id"], name: "index_product_data_elements_on_data_element_tbl_id"
    t.index ["product_id"], name: "index_product_data_elements_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "role_has_permissions", force: :cascade do |t|
    t.bigint "permissions_tbls_id", null: false
    t.bigint "role_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["permissions_tbls_id"], name: "index_role_has_permissions_on_permissions_tbls_id"
    t.index ["role_id"], name: "index_role_has_permissions_on_role_id"
  end

  create_table "roles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spare_part_categories", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spare_part_orders", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spare_part_orders_issued", force: :cascade do |t|
    t.bigint "spare_part_order_id", null: false
    t.bigint "spare_part_type_id", null: false
    t.integer "quantity"
    t.date "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spare_part_order_id"], name: "index_spare_part_orders_issued_on_spare_part_order_id"
    t.index ["spare_part_type_id"], name: "index_spare_part_orders_issued_on_spare_part_type_id"
  end

  create_table "spare_part_orders_ordered", force: :cascade do |t|
    t.bigint "spare_part_order_id", null: false
    t.bigint "spare_part_type_id", null: false
    t.integer "quantity"
    t.date "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spare_part_order_id"], name: "index_spare_part_orders_ordered_on_spare_part_order_id"
    t.index ["spare_part_type_id"], name: "index_spare_part_orders_ordered_on_spare_part_type_id"
  end

  create_table "spare_part_orders_packed", force: :cascade do |t|
    t.bigint "spare_part_order_id", null: false
    t.bigint "spare_part_type_id", null: false
    t.integer "quantity"
    t.date "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spare_part_order_id"], name: "index_spare_part_orders_packed_on_spare_part_order_id"
    t.index ["spare_part_type_id"], name: "index_spare_part_orders_packed_on_spare_part_type_id"
  end

  create_table "spare_part_orders_recieved", force: :cascade do |t|
    t.bigint "spare_part_order_id", null: false
    t.bigint "spare_part_type_id", null: false
    t.integer "quantity"
    t.date "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spare_part_order_id"], name: "index_spare_part_orders_recieved_on_spare_part_order_id"
    t.index ["spare_part_type_id"], name: "index_spare_part_orders_recieved_on_spare_part_type_id"
  end

  create_table "spare_part_transcactions", force: :cascade do |t|
    t.bigint "transaction_type_id", null: false
    t.bigint "transaction_reason_id", null: false
    t.bigint "location_id", null: false
    t.bigint "spare_part_order_id", null: false
    t.date "data"
    t.bigint "other_location_id", null: false
    t.bigint "user_id", null: false
    t.string "status"
    t.date "deleted"
    t.integer "quantity"
    t.bigint "spare_part_type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_spare_part_transcactions_on_location_id"
    t.index ["other_location_id"], name: "index_spare_part_transcactions_on_other_location_id"
    t.index ["spare_part_order_id"], name: "index_spare_part_transcactions_on_spare_part_order_id"
    t.index ["spare_part_type_id"], name: "index_spare_part_transcactions_on_spare_part_type_id"
    t.index ["transaction_reason_id"], name: "index_spare_part_transcactions_on_transaction_reason_id"
    t.index ["transaction_type_id"], name: "index_spare_part_transcactions_on_transaction_type_id"
    t.index ["user_id"], name: "index_spare_part_transcactions_on_user_id"
  end

  create_table "spare_part_type_balances", force: :cascade do |t|
    t.bigint "spare_part_type_id", null: false
    t.bigint "location_id", null: false
    t.integer "balance"
    t.date "date"
    t.bigint "spare_part_transaction_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_spare_part_type_balances_on_location_id"
    t.index ["spare_part_transaction_id"], name: "index_spare_part_type_balances_on_spare_part_transaction_id"
    t.index ["spare_part_type_id"], name: "index_spare_part_type_balances_on_spare_part_type_id"
  end

  create_table "spare_part_types", force: :cascade do |t|
    t.bigint "spare_part_category_id", null: false
    t.string "name"
    t.string "description"
    t.string "unit_of_measure"
    t.date "manufacture_date"
    t.string "warranty_information"
    t.bigint "maintaince_service_provider_id", null: false
    t.date "deleted_at"
    t.bigint "manufacture_id", null: false
    t.bigint "supplier_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["maintaince_service_provider_id"], name: "index_spare_part_types_on_maintaince_service_provider_id"
    t.index ["manufacture_id"], name: "index_spare_part_types_on_manufacture_id"
    t.index ["spare_part_category_id"], name: "index_spare_part_types_on_spare_part_category_id"
    t.index ["supplier_id"], name: "index_spare_part_types_on_supplier_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transaction_reasons", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transaction_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "location_product_counts", "locations"
  add_foreign_key "location_product_counts", "products"
  add_foreign_key "location_products", "locations"
  add_foreign_key "location_products", "products"
  add_foreign_key "model_has_permissions", "models_tbls", column: "models_tbls_id"
  add_foreign_key "model_has_permissions", "permissions_tbls"
  add_foreign_key "model_has_roles", "models_tbls", column: "models_tbls_id"
  add_foreign_key "model_has_roles", "roles"
  add_foreign_key "notifications", "notifiables"
  add_foreign_key "oauth_personal_access_clients", "clients"
  add_foreign_key "product_data_elements", "products"
  add_foreign_key "role_has_permissions", "permissions_tbls", column: "permissions_tbls_id"
  add_foreign_key "role_has_permissions", "roles"
  add_foreign_key "spare_part_orders_issued", "spare_part_orders"
  add_foreign_key "spare_part_orders_issued", "spare_part_types"
  add_foreign_key "spare_part_orders_ordered", "spare_part_orders"
  add_foreign_key "spare_part_orders_ordered", "spare_part_types"
  add_foreign_key "spare_part_orders_packed", "spare_part_orders"
  add_foreign_key "spare_part_orders_packed", "spare_part_types"
  add_foreign_key "spare_part_orders_recieved", "spare_part_orders"
  add_foreign_key "spare_part_orders_recieved", "spare_part_types"
  add_foreign_key "spare_part_transcactions", "locations"
  add_foreign_key "spare_part_transcactions", "other_locations"
  add_foreign_key "spare_part_transcactions", "spare_part_orders"
  add_foreign_key "spare_part_transcactions", "spare_part_types"
  add_foreign_key "spare_part_transcactions", "transaction_reasons"
  add_foreign_key "spare_part_transcactions", "transaction_types"
  add_foreign_key "spare_part_transcactions", "users"
  add_foreign_key "spare_part_type_balances", "locations"
  add_foreign_key "spare_part_type_balances", "spare_part_types"
  add_foreign_key "spare_part_types", "maintaince_service_providers"
  add_foreign_key "spare_part_types", "manufactures"
  add_foreign_key "spare_part_types", "spare_part_categories"
  add_foreign_key "spare_part_types", "suppliers"
end
