require 'test_helper'

class VendaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  #fixtures :vendas

  test "shoul not save venda without cliente" do
    vendas = Venda.new
    assert !vendas.save, "Save the venda without cliente"
  end
end
