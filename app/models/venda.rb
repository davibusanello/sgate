class Venda < ActiveRecord::Base
  belongs_to :Cliente, :class_name => "Cliente", :foreign_key => "cliente_id"
  belongs_to :Pacote, :class_name => "Pacote", :foreign_key => "pacote_id"
  belongs_to :Vendedor, :class_name => "Vendedor", :foreign_key => "vendedor_id"
  # belongs_to :Pacotes
  # belongs_to :Vendedors
  attr_accessible :cliente, :cliente_id, :pacote, :pacote_id, :vendedor, :vendedor_id, :data, :observacao
  validates_presence_of :cliente_id

end
