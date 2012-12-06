class AddStatusToAgendas < ActiveRecord::Migration
  def change
    add_column :agendas, :status, :integer
  end
end
