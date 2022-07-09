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

ActiveRecord::Schema.define(version: 2022_07_09_013848) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "empresas", force: :cascade do |t|
    t.integer "rut"
    t.text "razon_social"
    t.text "representante_legal"
    t.text "direccion"
    t.integer "telefono"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ofertas", force: :cascade do |t|
    t.text "puesto"
    t.text "descripcion"
    t.integer "vacantes"
    t.integer "rango_salarial"
    t.date "fecha_inicio"
    t.string "modalidad"
    t.string "region"
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
    t.integer "rut"
    t.string "nombre"
    t.date "fecha_nacimiento"
    t.string "genero"
    t.integer "telefono"
    t.text "curriculum"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "ofertas", "empresas"
  add_foreign_key "postulaciones", "empresas"
  add_foreign_key "postulaciones", "ofertas"
  add_foreign_key "postulaciones", "postulantes"
end
