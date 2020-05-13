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

ActiveRecord::Schema.define(version: 2020_04_21_155036) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carros", force: :cascade do |t|
    t.string "placa"
    t.string "modelo"
    t.string "cor"
    t.bigint "funcionario_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["funcionario_id"], name: "index_carros_on_funcionario_id"
  end

  create_table "funcionarios", force: :cascade do |t|
    t.string "nome"
    t.string "telefone"
    t.string "setor"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "lista_esperas", force: :cascade do |t|
    t.integer "classificacao"
    t.bigint "funcionario_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["funcionario_id"], name: "index_lista_esperas_on_funcionario_id"
  end

  create_table "reservas", force: :cascade do |t|
    t.bigint "funcionario_id", null: false
    t.bigint "vaga_id", null: false
    t.datetime "validade"
    t.boolean "ativo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["funcionario_id"], name: "index_reservas_on_funcionario_id"
    t.index ["vaga_id"], name: "index_reservas_on_vaga_id"
  end

  create_table "vagas", force: :cascade do |t|
    t.string "identificacao"
    t.string "localizacao"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "carros", "funcionarios"
  add_foreign_key "lista_esperas", "funcionarios"
  add_foreign_key "reservas", "funcionarios"
  add_foreign_key "reservas", "vagas"
end
