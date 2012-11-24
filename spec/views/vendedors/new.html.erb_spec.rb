require 'spec_helper'

describe "vendedors/new" do
  before(:each) do
    assign(:vendedor, stub_model(Vendedor,
      :registro => "MyString",
      :nome => "MyString"
    ).as_new_record)
  end

  it "renders new vendedor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => vendedors_path, :method => "post" do
      assert_select "input#vendedor_registro", :name => "vendedor[registro]"
      assert_select "input#vendedor_nome", :name => "vendedor[nome]"
    end
  end
end
