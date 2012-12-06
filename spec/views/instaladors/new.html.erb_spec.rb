require 'spec_helper'

describe "instaladors/new" do
  before(:each) do
    assign(:instalador, stub_model(Instalador,
      :nome => "MyString",
      :registro => "MyString"
    ).as_new_record)
  end

  it "renders new instalador form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => instaladors_path, :method => "post" do
      assert_select "input#instalador_nome", :name => "instalador[nome]"
      assert_select "input#instalador_registro", :name => "instalador[registro]"
    end
  end
end
