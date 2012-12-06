class Agenda < ActiveRecord::Base
  attr_accessible :data_agendada, :data_realizada, :descricao, :instalador_id, :pacote_id, :cliente_id, :status
  validates_presence_of :data_agendada, :cliente_id, :pacote_id, :instalador_id, :status

  belongs_to :Instalador, :class_name => "Instalador", :foreign_key => "instalador_id"
  belongs_to :Cliente, :class_name => "Cliente", :foreign_key => "cliente_id"
  belongs_to :Pacote, :class_name => "Pacote", :foreign_key => "pacote_id"
end
