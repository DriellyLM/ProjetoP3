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

ActiveRecord::Schema.define(version: 20140324201042) do

  create_table "cargofuncionarios", force: true do |t|
    t.string   "cargofuncionario"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "emailfuncionarios", force: true do |t|
    t.string   "email"
    t.integer  "funcionario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "emailfuncionarios", ["funcionario_id"], name: "index_emailfuncionarios_on_funcionario_id"

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

  create_table "itensdaordemdeservicos", force: true do |t|
    t.string   "itensos"
    t.integer  "quantidade"
    t.integer  "ordemdeservico_id"
    t.integer  "servico_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "itensdaordemdeservicos", ["ordemdeservico_id"], name: "index_itensdaordemdeservicos_on_ordemdeservico_id"
  add_index "itensdaordemdeservicos", ["servico_id"], name: "index_itensdaordemdeservicos_on_servico_id"

  create_table "itensdopedidos", force: true do |t|
    t.string   "itempedido"
    t.integer  "quantidade"
    t.integer  "pedido_id"
    t.integer  "produto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "itensdopedidos", ["pedido_id"], name: "index_itensdopedidos_on_pedido_id"
  add_index "itensdopedidos", ["produto_id"], name: "index_itensdopedidos_on_produto_id"

  create_table "niveldeacessos", force: true do |t|
    t.string   "descricaonivel"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ordemdeservicos", force: true do |t|
    t.string   "descricaoservico"
    t.string   "descricaoproduto"
    t.string   "datainicialos"
    t.string   "datafinalos"
    t.integer  "usuario_id"
    t.integer  "pontoremoto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ordemdeservicos", ["pontoremoto_id"], name: "index_ordemdeservicos_on_pontoremoto_id"
  add_index "ordemdeservicos", ["usuario_id"], name: "index_ordemdeservicos_on_usuario_id"

  create_table "pedidos", force: true do |t|
    t.string   "datapedido"
    t.string   "dataenvio"
    t.integer  "ordemdeservico_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pedidos", ["ordemdeservico_id"], name: "index_pedidos_on_ordemdeservico_id"

  create_table "pontoremotos", force: true do |t|
    t.string   "endereco"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "produtos", force: true do |t|
    t.integer  "quantidade"
    t.integer  "numeroee"
    t.string   "dataentradaestoque"
    t.string   "datasaidaestoque"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "servicos", force: true do |t|
    t.string   "tipodeservico"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "telefonefuncionarios", force: true do |t|
    t.string   "numerotelefone"
    t.integer  "funcionario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "telefonefuncionarios", ["funcionario_id"], name: "index_telefonefuncionarios_on_funcionario_id"

  create_table "usuarios", force: true do |t|
    t.string   "login"
    t.string   "senha"
    t.string   "ativo"
    t.integer  "funcionario_id"
    t.integer  "niveldeacesso_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "usuarios", ["funcionario_id"], name: "index_usuarios_on_funcionario_id"
  add_index "usuarios", ["niveldeacesso_id"], name: "index_usuarios_on_niveldeacesso_id"

end
