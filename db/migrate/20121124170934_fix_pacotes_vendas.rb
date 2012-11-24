class FixPacotesVendas < ActiveRecord::Migration
  def up
    rename_column :vendas, :Pacotes_id, :pacote_id
  end

  def down
    rename_column :vendas, :pacote_id, :Pacotes_id
  end
end
