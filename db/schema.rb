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

ActiveRecord::Schema.define(version: 2019_02_05_200943) do

  create_table "alquilers", force: :cascade do |t|
    t.date "fecha"
    t.time "hora"
    t.integer "nhora"
    t.string "tpaog"
    t.integer "estacionamiento_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["estacionamiento_id"], name: "index_alquilers_on_estacionamiento_id"
  end

  create_table "autenticacions", force: :cascade do |t|
    t.string "correo"
    t.string "contrasena"
    t.integer "tipo_usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tipo_usuario_id"], name: "index_autenticacions_on_tipo_usuario_id"
  end

  create_table "bajas", force: :cascade do |t|
    t.string "motivo"
    t.integer "autenticacion_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["autenticacion_id"], name: "index_bajas_on_autenticacion_id"
  end

  create_table "comentarios", force: :cascade do |t|
    t.integer "puntuacion"
    t.string "descripcion"
    t.integer "usuario_id"
    t.integer "autenticacion_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["autenticacion_id"], name: "index_comentarios_on_autenticacion_id"
    t.index ["usuario_id"], name: "index_comentarios_on_usuario_id"
  end

  create_table "distritos", force: :cascade do |t|
    t.string "distrito"
    t.integer "idProvincia"
    t.string "Provincia"
    t.integer "idDepartamento"
    t.string "Departamento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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

  create_table "tipo_documentos", force: :cascade do |t|
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_usuarios", force: :cascade do |t|
    t.string "descripcion"
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

  create_table "usuarios", force: :cascade do |t|
    t.string "nroDocumento"
    t.string "nombres"
    t.string "apellidoPaterno"
    t.string "apellidoMaterno"
    t.date "fechaNacimiento"
    t.string "celular"
    t.string "sexo"
    t.string "direccion"
    t.integer "autenticacion_id"
    t.integer "distrito_id"
    t.integer "tipo_documento_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["autenticacion_id"], name: "index_usuarios_on_autenticacion_id"
    t.index ["distrito_id"], name: "index_usuarios_on_distrito_id"
    t.index ["tipo_documento_id"], name: "index_usuarios_on_tipo_documento_id"
  end

end
