require 'spec_helper'

describe "pacotes/index" do
  before(:each) do
    assign(:pacotes, [
      stub_model(Pacote,
        :nome => "Nome",
        :descricao => "Descricao",
        :valor => "9.99"
      ),
      stub_model(Pacote,
        :nome => "Nome",
        :descricao => "Descricao",
        :valor => "9.99"
      )
    ])
  end

  it "renders a list of pacotes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
