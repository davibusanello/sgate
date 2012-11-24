require 'spec_helper'

describe "clientes/index" do
  before(:each) do
    assign(:clientes, [
      stub_model(Cliente,
        :numero_inscricao => "Numero Inscricao",
        :nome => "Nome",
        :sexo => "Sexo",
        :cpf_cnpj => "Cpf Cnpj",
        :endereco => "Endereco",
        :telefone => "Telefone"
      ),
      stub_model(Cliente,
        :numero_inscricao => "Numero Inscricao",
        :nome => "Nome",
        :sexo => "Sexo",
        :cpf_cnpj => "Cpf Cnpj",
        :endereco => "Endereco",
        :telefone => "Telefone"
      )
    ])
  end

  it "renders a list of clientes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Numero Inscricao".to_s, :count => 2
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Sexo".to_s, :count => 2
    assert_select "tr>td", :text => "Cpf Cnpj".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
  end
end
