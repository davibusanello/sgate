require 'spec_helper'

describe "vendas/new" do
  before(:each) do
    assign(:venda, stub_model(Venda,
      :Clientes => nil,
      :Pacotes => nil,
      :Vendedors => nil,
      :observacao => "MyText"
    ).as_new_record)
  end

  it "renders new venda form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => vendas_path, :method => "post" do
      assert_select "input#venda_Clientes", :name => "venda[Clientes]"
      assert_select "input#venda_Pacotes", :name => "venda[Pacotes]"
      assert_select "input#venda_Vendedors", :name => "venda[Vendedors]"
      assert_select "textarea#venda_observacao", :name => "venda[observacao]"
    end
  end
end
