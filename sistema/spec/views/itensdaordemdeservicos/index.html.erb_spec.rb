require 'spec_helper'

describe "itensdaordemdeservicos/index" do
  before(:each) do
    assign(:itensdaordemdeservicos, [
      stub_model(Itensdaordemdeservico,
        :itensos => "Itensos",
        :quantidade => 1,
        :ordemdeservico => nil,
        :servico => nil
      ),
      stub_model(Itensdaordemdeservico,
        :itensos => "Itensos",
        :quantidade => 1,
        :ordemdeservico => nil,
        :servico => nil
      )
    ])
  end

  it "renders a list of itensdaordemdeservicos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Itensos".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
