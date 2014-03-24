require 'spec_helper'

describe "servicos/index" do
  before(:each) do
    assign(:servicos, [
      stub_model(Servico,
        :tipodeservico => "Tipodeservico"
      ),
      stub_model(Servico,
        :tipodeservico => "Tipodeservico"
      )
    ])
  end

  it "renders a list of servicos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Tipodeservico".to_s, :count => 2
  end
end
