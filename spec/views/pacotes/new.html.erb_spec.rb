require 'spec_helper'

describe "pacotes/new" do
  before(:each) do
    assign(:pacote, stub_model(Pacote,
      :nome => "MyString",
      :descricao => "MyString",
      :valor => "9.99"
    ).as_new_record)
  end

  it "renders new pacote form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pacotes_path, :method => "post" do
      assert_select "input#pacote_nome", :name => "pacote[nome]"
      assert_select "input#pacote_descricao", :name => "pacote[descricao]"
      assert_select "input#pacote_valor", :name => "pacote[valor]"
    end
  end
end
