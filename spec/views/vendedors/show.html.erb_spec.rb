require 'spec_helper'

describe "vendedors/show" do
  before(:each) do
    @vendedor = assign(:vendedor, stub_model(Vendedor,
      :registro => "Registro",
      :nome => "Nome"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Registro/)
    rendered.should match(/Nome/)
  end
end
