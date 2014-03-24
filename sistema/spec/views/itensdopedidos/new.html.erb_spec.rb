require 'spec_helper'

describe "itensdopedidos/new" do
  before(:each) do
    assign(:itensdopedido, stub_model(Itensdopedido,
      :itempedido => "MyString",
      :quantidade => 1,
      :pedido => nil,
      :produto => nil
    ).as_new_record)
  end

  it "renders new itensdopedido form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", itensdopedidos_path, "post" do
      assert_select "input#itensdopedido_itempedido[name=?]", "itensdopedido[itempedido]"
      assert_select "input#itensdopedido_quantidade[name=?]", "itensdopedido[quantidade]"
      assert_select "input#itensdopedido_pedido[name=?]", "itensdopedido[pedido]"
      assert_select "input#itensdopedido_produto[name=?]", "itensdopedido[produto]"
    end
  end
end
