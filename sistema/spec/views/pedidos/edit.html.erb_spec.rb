require 'spec_helper'

describe "pedidos/edit" do
  before(:each) do
    @pedido = assign(:pedido, stub_model(Pedido,
      :datapedido => "MyString",
      :dataenvio => "MyString",
      :ordemdeservico => nil
    ))
  end

  it "renders the edit pedido form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", pedido_path(@pedido), "post" do
      assert_select "input#pedido_datapedido[name=?]", "pedido[datapedido]"
      assert_select "input#pedido_dataenvio[name=?]", "pedido[dataenvio]"
      assert_select "input#pedido_ordemdeservico[name=?]", "pedido[ordemdeservico]"
    end
  end
end
