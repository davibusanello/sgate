require 'spec_helper'

describe "vendedors/index" do
  before(:each) do
    assign(:vendedors, [
      stub_model(Vendedor,
        :registro => "Registro",
        :nome => "Nome"
      ),
      stub_model(Vendedor,
        :registro => "Registro",
        :nome => "Nome"
      )
    ])
  end

  it "renders a list of vendedors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Registro".to_s, :count => 2
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
  end
end
