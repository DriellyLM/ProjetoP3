require 'spec_helper'

describe "pedidos/new" do
  before(:each) do
    assign(:pedido, stub_model(Pedido,
      :datapedido => "MyString",
      :dataenvio => "MyString",
      :ordemdeservico => nil
    ).as_new_record)
  end

  it "renders new pedido form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", pedidos_path, "post" do
      assert_select "input#pedido_datapedido[name=?]", "pedido[datapedido]"
      assert_select "input#pedido_dataenvio[name=?]", "pedido[dataenvio]"
      assert_select "input#pedido_ordemdeservico[name=?]", "pedido[ordemdeservico]"
    end
  end
end
