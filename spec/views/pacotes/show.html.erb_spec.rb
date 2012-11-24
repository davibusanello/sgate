require 'spec_helper'

describe "pacotes/show" do
  before(:each) do
    @pacote = assign(:pacote, stub_model(Pacote,
      :nome => "Nome",
      :descricao => "Descricao",
      :valor => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Descricao/)
    rendered.should match(/9.99/)
  end
end
