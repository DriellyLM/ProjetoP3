require 'spec_helper'

describe "pontoremotos/index" do
  before(:each) do
    assign(:pontoremotos, [
      stub_model(Pontoremoto,
        :endereco => "Endereco"
      ),
      stub_model(Pontoremoto,
        :endereco => "Endereco"
      )
    ])
  end

  it "renders a list of pontoremotos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
  end
end
