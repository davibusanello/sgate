require 'spec_helper'

describe "instaladors/index" do
  before(:each) do
    assign(:instaladors, [
      stub_model(Instalador,
        :nome => "Nome",
        :registro => "Registro"
      ),
      stub_model(Instalador,
        :nome => "Nome",
        :registro => "Registro"
      )
    ])
  end

  it "renders a list of instaladors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Registro".to_s, :count => 2
  end
end
