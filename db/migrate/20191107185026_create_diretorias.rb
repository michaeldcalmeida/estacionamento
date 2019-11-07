class CreateDiretorias < ActiveRecord::Migration[6.0]
  def change
    create_table :diretorias do |t|
      t.string :nome
      t.string :descricao
      t.integer :prioridade
      t.references :diretoria_id, null: true

      t.timestamps
    end

    change_column :diretorias, :diretoria_id, :integer, :null => true
  end
end
