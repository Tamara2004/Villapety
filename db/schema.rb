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

ActiveRecord::Schema.define(version: 20151028003347) do

  create_table "cliente_recepcions", force: true do |t|
    t.integer  "cliente_id"
    t.integer  "recepcion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cliente_recepcions", ["cliente_id"], name: "index_cliente_recepcions_on_cliente_id"
  add_index "cliente_recepcions", ["recepcion_id"], name: "index_cliente_recepcions_on_recepcion_id"

  create_table "clientes", force: true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "correo"
    t.string   "direccion"
    t.integer  "mascota_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clientes", ["mascota_id"], name: "index_clientes_on_mascota_id"

  create_table "mascota", force: true do |t|
    t.string   "nombre"
    t.string   "edad"
    t.string   "raza"
    t.integer  "servicio_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "mascota", ["servicio_id"], name: "index_mascota_on_servicio_id"

  create_table "recepcions", force: true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "cargo"
    t.string   "telefono"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "servicios", force: true do |t|
    t.string   "tratamiento"
    t.string   "valor"
    t.date     "cita"
    t.string   "producto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true

end
