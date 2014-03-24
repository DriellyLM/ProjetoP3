require 'spec_helper'

describe "cargofuncionarios/show" do
  before(:each) do
    @cargofuncionario = assign(:cargofuncionario, stub_model(Cargofuncionario,
      :cargofuncionario => "Cargofuncionario"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cargofuncionario/)
  end
end
