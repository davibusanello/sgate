class ChangeVendedorIdToClienteIdInAgendas < ActiveRecord::Migration
  def up
    rename_column :agendas, :vendedor_id, :cliente_id
  end

  def down
    rename_column :agendas, :cliente_id, :vendedor_id
  end
end
