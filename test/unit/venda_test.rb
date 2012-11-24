require 'test_helper'

class VendaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "cliente should not blank" do
    venda = Venda.new
    assert !venda.cliente.blank?, "Saved the venda without cliente"
  end


end
