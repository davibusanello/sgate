class Cliente < ActiveRecord::Base
  attr_accessible :cpf_cnpj, :data_nascimento, :endereco, :nome, :numero_inscricao, :sexo, :telefone
  has_many :Vendas, :class_name => "Vendas", :foreign_key => "cliente_id"
end
