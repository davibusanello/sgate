class Fatura < ActiveRecord::Base
  attr_accessible :cliente_id, :data_vencimento, :nome, :numero_inscricao, :pacote_id, :valor
end
