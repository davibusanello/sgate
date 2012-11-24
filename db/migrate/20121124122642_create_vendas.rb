class CreateVendas < ActiveRecord::Migration
  def change
    create_table :vendas do |t|
      t.reference :cliente
      t.reference :pacote
      t.reference :vendedor
      t.date :data
      t.text :observacao

      t.timestamps
    end
  end
end
