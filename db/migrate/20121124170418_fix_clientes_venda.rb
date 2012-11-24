class FixClientesVenda < ActiveRecord::Migration
  def up
    rename_column :vendas, :Clientes_id, :cliente_id
  end

  def down
    rename_column :vendas, :cliente_id, :Clientes_id
  end
end
