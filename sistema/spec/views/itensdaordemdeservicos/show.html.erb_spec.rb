require 'spec_helper'

describe "itensdaordemdeservicos/show" do
  before(:each) do
    @itensdaordemdeservico = assign(:itensdaordemdeservico, stub_model(Itensdaordemdeservico,
      :itensos => "Itensos",
      :quantidade => 1,
      :ordemdeservico => nil,
      :servico => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Itensos/)
    rendered.should match(/1/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
