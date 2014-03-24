require 'spec_helper'

describe "cargofuncionarios/index" do
  before(:each) do
    assign(:cargofuncionarios, [
      stub_model(Cargofuncionario,
        :cargofuncionario => "Cargofuncionario"
      ),
      stub_model(Cargofuncionario,
        :cargofuncionario => "Cargofuncionario"
      )
    ])
  end

  it "renders a list of cargofuncionarios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cargofuncionario".to_s, :count => 2
  end
end
