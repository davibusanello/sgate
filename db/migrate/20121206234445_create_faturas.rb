class CreateFaturas < ActiveRecord::Migration
  def change
    create_table :faturas do |t|
      t.integer :cliente_id
      t.string :nome
      t.string :numero_inscricao
      t.date :data_vencimento
      t.integer :pacote_id
      t.decimal :valor

      t.timestamps
    end
  end
end
