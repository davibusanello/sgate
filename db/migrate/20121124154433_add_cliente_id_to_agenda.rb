class AddClienteIdToAgenda < ActiveRecord::Migration
  def change
    add_column :agendas, :cliente_id, :integer
  end
end
