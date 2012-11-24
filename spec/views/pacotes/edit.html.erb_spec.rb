require 'spec_helper'

describe "pacotes/edit" do
  before(:each) do
    @pacote = assign(:pacote, stub_model(Pacote,
      :nome => "MyString",
      :descricao => "MyString",
      :valor => "9.99"
    ))
  end

  it "renders the edit pacote form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pacotes_path(@pacote), :method => "post" do
      assert_select "input#pacote_nome", :name => "pacote[nome]"
      assert_select "input#pacote_descricao", :name => "pacote[descricao]"
      assert_select "input#pacote_valor", :name => "pacote[valor]"
    end
  end
end
