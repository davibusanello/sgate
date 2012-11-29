require 'test_helper'

class AgendaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

def setup
  	@agenda = Agenda.new()
  	@agenda.data_agendada = DateTime.new(2012, 12, 26)
  	@agenda.data_realizada = nil
  	@agenda.descricao = 'Teste'
  	@agenda.instalador_id = 1
  	@agenda.pacote_id = 1
  	@agenda.cliente_id = 1
end

test "Agenda sem data_agendada" do
  	@agenda.data_agendada = nil
  	assert !@agenda.save, "Agenda sem data_agendada"
end

test "Agenda sem pacote_id" do
  	@agenda.pacote_id = nil
  	assert !@agenda.save, "Agenda sem pacote_id"
end

test "Agenda sem instalador_id" do
  	@agenda.instalador_id = nil
  	assert !@agenda.save, "Agenda sem instalador_id"
end

test "Agenda sem cliente_id" do
  	@agenda.cliente_id = nil
  	assert !@agenda.save, "Agenda sem cliente_id"
end

end
