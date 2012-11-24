require 'spec_helper'

describe "clientes/edit" do
  before(:each) do
    @cliente = assign(:cliente, stub_model(Cliente,
      :numero_inscricao => "MyString",
      :nome => "MyString",
      :sexo => "MyString",
      :cpf_cnpj => "MyString",
      :endereco => "MyString",
      :telefone => "MyString"
    ))
  end

  it "renders the edit cliente form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => clientes_path(@cliente), :method => "post" do
      assert_select "input#cliente_numero_inscricao", :name => "cliente[numero_inscricao]"
      assert_select "input#cliente_nome", :name => "cliente[nome]"
      assert_select "input#cliente_sexo", :name => "cliente[sexo]"
      assert_select "input#cliente_cpf_cnpj", :name => "cliente[cpf_cnpj]"
      assert_select "input#cliente_endereco", :name => "cliente[endereco]"
      assert_select "input#cliente_telefone", :name => "cliente[telefone]"
    end
  end
end
