require 'spec_helper'

describe "telefonefuncionarios/show" do
  before(:each) do
    @telefonefuncionario = assign(:telefonefuncionario, stub_model(Telefonefuncionario,
      :numerotelefone => "Numerotelefone",
      :funcionario => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Numerotelefone/)
    rendered.should match(//)
  end
end
