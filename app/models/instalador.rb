class Instalador < ActiveRecord::Base
  attr_accessible :nome, :registro

  has_many :Agendas, :class_name => "Agenda", :foreign_key => "instalador_id"
end
