# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_20_022621) do

  create_table "consults", force: :cascade do |t|
    t.text "prontuario"
    t.datetime "data"
    t.integer "paciente_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["paciente_id"], name: "index_consults_on_paciente_id"
  end

  create_table "medidas", force: :cascade do |t|
    t.float "circunfTorax"
    t.float "circunfQuadril"
    t.float "peso"
    t.float "circunfCintura"
    t.float "circunfPantur"
    t.float "circunfCoxa"
    t.float "circunfBraco"
    t.float "circunfAbdomem"
    t.integer "retorno_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["retorno_id"], name: "index_medidas_on_retorno_id"
  end

  create_table "nutris", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "nome"
    t.integer "crn"
    t.index ["email"], name: "index_nutris_on_email", unique: true
    t.index ["reset_password_token"], name: "index_nutris_on_reset_password_token", unique: true
  end

  create_table "pacientes", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "nome"
    t.integer "cpf"
    t.integer "altura"
    t.datetime "data_nascimento"
    t.index ["email"], name: "index_pacientes_on_email", unique: true
    t.index ["reset_password_token"], name: "index_pacientes_on_reset_password_token", unique: true
  end

  create_table "retornos", force: :cascade do |t|
    t.text "prontuario"
    t.datetime "data"
    t.boolean "estado"
    t.integer "consult_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["consult_id"], name: "index_retornos_on_consult_id"
  end

  add_foreign_key "consults", "pacientes"
  add_foreign_key "medidas", "retornos"
  add_foreign_key "retornos", "consults"
end
