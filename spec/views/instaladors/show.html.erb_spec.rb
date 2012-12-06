require 'spec_helper'

describe "instaladors/show" do
  before(:each) do
    @instalador = assign(:instalador, stub_model(Instalador,
      :nome => "Nome",
      :registro => "Registro"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Registro/)
  end
end
