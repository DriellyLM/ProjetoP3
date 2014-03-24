require 'spec_helper'

describe "pontoremotos/show" do
  before(:each) do
    @pontoremoto = assign(:pontoremoto, stub_model(Pontoremoto,
      :endereco => "Endereco"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Endereco/)
  end
end
