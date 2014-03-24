require 'spec_helper'

describe "servicos/show" do
  before(:each) do
    @servico = assign(:servico, stub_model(Servico,
      :tipodeservico => "Tipodeservico"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Tipodeservico/)
  end
end
