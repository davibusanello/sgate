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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121124122642) do

  create_table "clientes", :force => true do |t|
    t.string   "numero_inscricao"
    t.string   "nome"
    t.date     "data_nascimento"
    t.string   "sexo"
    t.string   "cpf_cnpj"
    t.string   "endereco"
    t.string   "telefone"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "pacotes", :force => true do |t|
    t.string   "nome"
    t.string   "descricao"
    t.decimal  "valor"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "vendas", :force => true do |t|
    t.integer  "cliente_id"
    t.integer  "pacote_id"
    t.integer  "vendedor_id"
    t.date     "data"
    t.text     "observacao"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "vendedors", :force => true do |t|
    t.string   "registro"
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
