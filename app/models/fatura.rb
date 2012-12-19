class Fatura < ActiveRecord::Base
  attr_accessible :cliente_id, :data_vencimento, :nome, :numero_inscricao, :pacote_id, :valor

  belongs_to :Cliente, :class_name => "Cliente", :foreign_key => "cliente_id"
  belongs_to :Pacote, :class_name => "Pacote", :foreign_key => "pacote_id"

  def self.search_faturas(search)
    if search
      find(:all, :conditions => ['numero_inscricao LIKE ?',"%#{search}%"])
      # select(:all).where(numero_inscricao: search)
    end
  end
end
