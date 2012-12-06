class Pacote < ActiveRecord::Base
  attr_accessible :descricao, :nome, :valor
  has_many :Vendas, :class_name => "Venda", :foreign_key => "pacote_id"
  has_many :Agendas, :class_name => "Agenda", :foreign_key => "pacote_id"
end
