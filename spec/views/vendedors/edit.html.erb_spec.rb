require 'spec_helper'

describe "vendedors/edit" do
  before(:each) do
    @vendedor = assign(:vendedor, stub_model(Vendedor,
      :registro => "MyString",
      :nome => "MyString"
    ))
  end

  it "renders the edit vendedor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => vendedors_path(@vendedor), :method => "post" do
      assert_select "input#vendedor_registro", :name => "vendedor[registro]"
      assert_select "input#vendedor_nome", :name => "vendedor[nome]"
    end
  end
end
