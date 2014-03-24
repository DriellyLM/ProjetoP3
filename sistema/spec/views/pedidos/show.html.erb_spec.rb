require 'spec_helper'

describe "pedidos/show" do
  before(:each) do
    @pedido = assign(:pedido, stub_model(Pedido,
      :datapedido => "Datapedido",
      :dataenvio => "Dataenvio",
      :ordemdeservico => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Datapedido/)
    rendered.should match(/Dataenvio/)
    rendered.should match(//)
  end
end
