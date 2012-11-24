require 'spec_helper'

describe "clientes/show" do
  before(:each) do
    @cliente = assign(:cliente, stub_model(Cliente,
      :numero_inscricao => "Numero Inscricao",
      :nome => "Nome",
      :sexo => "Sexo",
      :cpf_cnpj => "Cpf Cnpj",
      :endereco => "Endereco",
      :telefone => "Telefone"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Numero Inscricao/)
    rendered.should match(/Nome/)
    rendered.should match(/Sexo/)
    rendered.should match(/Cpf Cnpj/)
    rendered.should match(/Endereco/)
    rendered.should match(/Telefone/)
  end
end
