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

ActiveRecord::Schema.define(version: 2019_02_03_182535) do

  create_table "estacionamientos", force: :cascade do |t|
    t.string "nombre"
    t.integer "departamento"
    t.integer "provincia"
    t.integer "distrito"
    t.string "direccion"
    t.float "latitud"
    t.float "longitud"
    t.boolean "lunes"
    t.boolean "martes"
    t.boolean "miercoles"
    t.boolean "jueves"
    t.boolean "viernes"
    t.boolean "sabado"
    t.boolean "domingo"
    t.time "hinicio"
    t.time "hcierre"
    t.string "telf"
    t.integer "nespac"
    t.integer "largo"
    t.integer "ancho"
    t.integer "alto"
    t.integer "precio"
    t.string "img"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "serv_adicinales", force: :cascade do |t|
    t.string "nombre"
    t.decimal "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ubigeos", force: :cascade do |t|
    t.string "idDepartamento"
    t.string "Departamento"
    t.string "idProvincia"
    t.string "Provincia"
    t.string "idDistrito"
    t.string "Distrito"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
