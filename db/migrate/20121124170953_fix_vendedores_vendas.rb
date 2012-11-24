class FixVendedoresVendas < ActiveRecord::Migration
  def up
    rename_column :vendas, :Vendedors_id, :vendedor_id
  end

  def down
    rename_column :vendas, :vendedor_id, :Vendedors_id
  end
end
