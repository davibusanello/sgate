class Venda < ActiveRecord::Base
  attr_accessible :cliente_id, :data, :observacao, :pacote, :vendedor
  has_many :clientes, :class_name => "clientes", :foreign_key => "cliente_id"
  has_many :pacotes, :class_name => "pacotes", :foreign_key => "pacote_id"
  has_many :vendedors, :class_name => "vendedors", :foreign_key => "vendedor_id"
  validates_presence_of :cliente_id, :pacote_id, :vendedor_id
end
