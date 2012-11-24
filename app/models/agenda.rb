class Agenda < ActiveRecord::Base
  attr_accessible :data_agendada, :data_realizada, :descricao, :instalador_id, :pacote_id, :vendedor_id, :cliente_id
  validates_presence_of :data_agendada, :cliente_id, :pacote_id, :vendedor_id
end
