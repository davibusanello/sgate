require 'test_helper'

class VendaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "cliente should not blank" do
    venda = Venda.new
    assert !venda.save, "Saved the venda without cliente"
  end

  test "pacote should not blank" do
    venda = Venda.new
    assert !venda.save, "Saved the venda without pacote"
  end

  test "vendedor should not blank" do
    venda = Venda.new
    assert !venda.save, "Saved the venda without vendedor"
  end

end
