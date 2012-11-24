class CreateVendas < ActiveRecord::Migration
  def change
    create_table :vendas do |t|
      t.references :cliente
      t.references :pacote
      t.references :vendedor
      t.date :data
      t.text :observacao

      t.timestamps
    end
  end
end
