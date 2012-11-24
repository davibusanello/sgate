require 'spec_helper'

describe "vendas/edit" do
  before(:each) do
    @venda = assign(:venda, stub_model(Venda,
      :Clientes => nil,
      :Pacotes => nil,
      :Vendedors => nil,
      :observacao => "MyText"
    ))
  end

  it "renders the edit venda form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => vendas_path(@venda), :method => "post" do
      assert_select "input#venda_Clientes", :name => "venda[Clientes]"
      assert_select "input#venda_Pacotes", :name => "venda[Pacotes]"
      assert_select "input#venda_Vendedors", :name => "venda[Vendedors]"
      assert_select "textarea#venda_observacao", :name => "venda[observacao]"
    end
  end
end
