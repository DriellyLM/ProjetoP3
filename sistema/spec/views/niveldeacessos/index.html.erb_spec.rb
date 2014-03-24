require 'spec_helper'

describe "niveldeacessos/index" do
  before(:each) do
    assign(:niveldeacessos, [
      stub_model(Niveldeacesso,
        :descricaonivel => "Descricaonivel"
      ),
      stub_model(Niveldeacesso,
        :descricaonivel => "Descricaonivel"
      )
    ])
  end

  it "renders a list of niveldeacessos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Descricaonivel".to_s, :count => 2
  end
end
