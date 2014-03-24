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

ActiveRecord::Schema.define(version: 20140324172039) do

  create_table "cargofuncionarios", force: true do |t|
    t.string   "cargofuncionario"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "enderecofuncionarios", force: true do |t|
    t.string   "logradouro"
    t.string   "numero"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "uf"
    t.integer  "cep"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "funcionarios", force: true do |t|
    t.string   "nome"
    t.string   "cpf"
    t.string   "sexo"
    t.string   "datanascimento"
    t.integer  "cargofuncionario_id"
    t.integer  "enderecofuncionario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "funcionarios", ["cargofuncionario_id"], name: "index_funcionarios_on_cargofuncionario_id"
  add_index "funcionarios", ["enderecofuncionario_id"], name: "index_funcionarios_on_enderecofuncionario_id"

  create_table "telefonefuncionarios", force: true do |t|
    t.string   "numerotelefone"
    t.integer  "funcionario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "telefonefuncionarios", ["funcionario_id"], name: "index_telefonefuncionarios_on_funcionario_id"

end
