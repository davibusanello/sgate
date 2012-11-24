class CreatePacotes < ActiveRecord::Migration
  def change
    create_table :pacotes do |t|
      t.string :nome
      t.string :descricao
      t.numeric :valor

      t.timestamps
    end
  end
end
