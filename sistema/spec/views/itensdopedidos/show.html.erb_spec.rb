require 'spec_helper'

describe "itensdopedidos/show" do
  before(:each) do
    @itensdopedido = assign(:itensdopedido, stub_model(Itensdopedido,
      :itempedido => "Itempedido",
      :quantidade => 1,
      :pedido => nil,
      :produto => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Itempedido/)
    rendered.should match(/1/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
