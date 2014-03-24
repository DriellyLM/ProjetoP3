require 'spec_helper'

describe "telefonefuncionarios/index" do
  before(:each) do
    assign(:telefonefuncionarios, [
      stub_model(Telefonefuncionario,
        :numerotelefone => "Numerotelefone",
        :funcionario => nil
      ),
      stub_model(Telefonefuncionario,
        :numerotelefone => "Numerotelefone",
        :funcionario => nil
      )
    ])
  end

  it "renders a list of telefonefuncionarios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Numerotelefone".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
