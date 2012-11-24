class Venda < ActiveRecord::Base
  attr_accessible :cliente, :data, :observacao, :pacote, :vendedor
end
