class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :numero_inscricao
      t.string :nome
      t.date :data_nascimento
      t.string :sexo
      t.string :cpf_cnpj
      t.string :endereco
      t.string :telefone

      t.timestamps
    end
  end
end
