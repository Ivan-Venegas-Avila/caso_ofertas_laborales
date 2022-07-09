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

ActiveRecord::Schema.define(version: 2022_07_09_035131) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "empresas", force: :cascade do |t|
    t.integer "rut", null: false
    t.text "razon_social", null: false
    t.text "representante_legal", null: false
    t.text "direccion", null: false
    t.integer "telefono", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_empresas_on_email", unique: true
    t.index ["reset_password_token"], name: "index_empresas_on_reset_password_token", unique: true
  end

  create_table "ofertas", force: :cascade do |t|
    t.text "puesto", null: false
    t.text "descripcion", null: false
    t.integer "vacantes"
    t.integer "rango_salarial"
    t.date "fecha_inicio", null: false
    t.string "modalidad", null: false
    t.string "region", null: false
    t.bigint "empresa_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["empresa_id"], name: "index_ofertas_on_empresa_id"
  end

  create_table "postulaciones", force: :cascade do |t|
    t.bigint "postulante_id", null: false
    t.bigint "empresa_id", null: false
    t.bigint "oferta_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["empresa_id"], name: "index_postulaciones_on_empresa_id"
    t.index ["oferta_id"], name: "index_postulaciones_on_oferta_id"
    t.index ["postulante_id"], name: "index_postulaciones_on_postulante_id"
  end

  create_table "postulantes", force: :cascade do |t|
    t.integer "rut", null: false
    t.string "nombre", null: false
    t.date "fecha_nacimiento", null: false
    t.string "genero", null: false
    t.integer "telefono", null: false
    t.text "curriculum", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_postulantes_on_email", unique: true
    t.index ["reset_password_token"], name: "index_postulantes_on_reset_password_token", unique: true
  end

  add_foreign_key "ofertas", "empresas"
  add_foreign_key "postulaciones", "empresas"
  add_foreign_key "postulaciones", "ofertas"
  add_foreign_key "postulaciones", "postulantes"
end
