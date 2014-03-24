require 'spec_helper'

describe "produtos/index" do
  before(:each) do
    assign(:produtos, [
      stub_model(Produto,
        :quantidade => 1,
        :numeroee => 2,
        :dataentradaestoque => "Dataentradaestoque",
        :datasaidaestoque => "Datasaidaestoque"
      ),
      stub_model(Produto,
        :quantidade => 1,
        :numeroee => 2,
        :dataentradaestoque => "Dataentradaestoque",
        :datasaidaestoque => "Datasaidaestoque"
      )
    ])
  end

  it "renders a list of produtos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Dataentradaestoque".to_s, :count => 2
    assert_select "tr>td", :text => "Datasaidaestoque".to_s, :count => 2
  end
end
