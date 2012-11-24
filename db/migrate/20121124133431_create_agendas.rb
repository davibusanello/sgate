class CreateAgendas < ActiveRecord::Migration
  def change
    create_table :agendas do |t|
      t.date :data_agendada
      t.date :data_realizada
      t.integer :vendedor_id
      t.integer :instalador_id
      t.integer :pacote_id
      t.string :descricao

      t.timestamps
    end
  end
end
