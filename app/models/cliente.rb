class Cliente < ActiveRecord::Base
  attr_accessible :cpf_cnpj, :data_nascimento, :endereco, :nome, :numero_inscricao, :sexo, :telefone
end
