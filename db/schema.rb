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

ActiveRecord::Schema.define(version: 2021_04_23_091343) do

  create_table "administrators", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_administrators_on_email", unique: true
    t.index ["reset_password_token"], name: "index_administrators_on_reset_password_token", unique: true
  end

  create_table "pazientes", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_pazientes_on_email", unique: true
    t.index ["reset_password_token"], name: "index_pazientes_on_reset_password_token", unique: true
  end

  create_table "prescriptions", force: :cascade do |t|
    t.string "medicinale"
    t.string "descrizioneUtilizzo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "paziente_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "nome"
    t.string "cognome"
    t.integer "eta"
    t.string "email"
    t.string "descrizione"
    t.string "citta"
    t.string "specializzazione"
    t.integer "costovisita"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
  end

  create_table "profilopazientis", force: :cascade do |t|
    t.string "nome"
    t.string "cognome"
    t.integer "eta"
    t.string "descrizione"
    t.integer "paziente_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "visites", force: :cascade do |t|
    t.string "nome_paziente"
    t.string "cognome_paziente"
    t.string "telefono_paziente"
    t.datetime "ora_visita"
    t.string "tipo_visita"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.string "email"
    t.string "luogoVisita"
    t.index ["user_id"], name: "index_visites_on_user_id"
  end

end
