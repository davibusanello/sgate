require 'spec_helper'

describe "faturas/show" do
  before(:each) do
    @fatura = assign(:fatura, stub_model(Fatura,
      :cliente_id => 1,
      :nome => "Nome",
      :numero_inscricao => "Numero Inscricao",
      :pacote_id => 2,
      :valor => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Nome/)
    rendered.should match(/Numero Inscricao/)
    rendered.should match(/2/)
    rendered.should match(/9.99/)
  end
end
