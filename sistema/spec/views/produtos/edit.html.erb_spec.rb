require 'spec_helper'

describe "produtos/edit" do
  before(:each) do
    @produto = assign(:produto, stub_model(Produto,
      :quantidade => 1,
      :numeroee => 1,
      :dataentradaestoque => "MyString",
      :datasaidaestoque => "MyString"
    ))
  end

  it "renders the edit produto form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", produto_path(@produto), "post" do
      assert_select "input#produto_quantidade[name=?]", "produto[quantidade]"
      assert_select "input#produto_numeroee[name=?]", "produto[numeroee]"
      assert_select "input#produto_dataentradaestoque[name=?]", "produto[dataentradaestoque]"
      assert_select "input#produto_datasaidaestoque[name=?]", "produto[datasaidaestoque]"
    end
  end
end
