class CreateVendas < ActiveRecord::Migration
  def change
    create_table :vendas do |t|
      t.references :Clientes
      t.references :Pacotes
      t.references :Vendedors
      t.date :data
      t.text :observacao

      t.timestamps
    end
    add_index :vendas, :Clientes_id
    add_index :vendas, :Pacotes_id
    add_index :vendas, :Vendedors_id
  end
end
