require 'spec_helper'

describe "itensdopedidos/index" do
  before(:each) do
    assign(:itensdopedidos, [
      stub_model(Itensdopedido,
        :itempedido => "Itempedido",
        :quantidade => 1,
        :pedido => nil,
        :produto => nil
      ),
      stub_model(Itensdopedido,
        :itempedido => "Itempedido",
        :quantidade => 1,
        :pedido => nil,
        :produto => nil
      )
    ])
  end

  it "renders a list of itensdopedidos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Itempedido".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
