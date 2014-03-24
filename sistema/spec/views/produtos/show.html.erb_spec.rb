require 'spec_helper'

describe "produtos/show" do
  before(:each) do
    @produto = assign(:produto, stub_model(Produto,
      :quantidade => 1,
      :numeroee => 2,
      :dataentradaestoque => "Dataentradaestoque",
      :datasaidaestoque => "Datasaidaestoque"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Dataentradaestoque/)
    rendered.should match(/Datasaidaestoque/)
  end
end
