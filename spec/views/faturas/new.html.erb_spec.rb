require 'spec_helper'

describe "faturas/new" do
  before(:each) do
    assign(:fatura, stub_model(Fatura,
      :cliente_id => 1,
      :nome => "MyString",
      :numero_inscricao => "MyString",
      :pacote_id => 1,
      :valor => "9.99"
    ).as_new_record)
  end

  it "renders new fatura form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => faturas_path, :method => "post" do
      assert_select "input#fatura_cliente_id", :name => "fatura[cliente_id]"
      assert_select "input#fatura_nome", :name => "fatura[nome]"
      assert_select "input#fatura_numero_inscricao", :name => "fatura[numero_inscricao]"
      assert_select "input#fatura_pacote_id", :name => "fatura[pacote_id]"
      assert_select "input#fatura_valor", :name => "fatura[valor]"
    end
  end
end
