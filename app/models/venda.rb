class Venda < ActiveRecord::Base
  belongs_to :Clientes
  belongs_to :Pacotes
  belongs_to :Vendedors
  attr_accessible :data, :observacao
end
