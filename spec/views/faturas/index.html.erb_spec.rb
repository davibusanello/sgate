require 'spec_helper'

describe "faturas/index" do
  before(:each) do
    assign(:faturas, [
      stub_model(Fatura,
        :cliente_id => 1,
        :nome => "Nome",
        :numero_inscricao => "Numero Inscricao",
        :pacote_id => 2,
        :valor => "9.99"
      ),
      stub_model(Fatura,
        :cliente_id => 1,
        :nome => "Nome",
        :numero_inscricao => "Numero Inscricao",
        :pacote_id => 2,
        :valor => "9.99"
      )
    ])
  end

  it "renders a list of faturas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Numero Inscricao".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
