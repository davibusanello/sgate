class Agenda < ActiveRecord::Base
  attr_accessible :data_agendada, :data_realizada, :descricao, :instalador_id, :pacote_id, :cliente_id
  validates_presence_of :data_agendada, :cliente_id, :pacote_id, :instalador_id
end
