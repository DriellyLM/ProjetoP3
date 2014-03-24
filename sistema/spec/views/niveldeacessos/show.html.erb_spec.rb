require 'spec_helper'

describe "niveldeacessos/show" do
  before(:each) do
    @niveldeacesso = assign(:niveldeacesso, stub_model(Niveldeacesso,
      :descricaonivel => "Descricaonivel"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Descricaonivel/)
  end
end
