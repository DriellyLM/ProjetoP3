require 'spec_helper'

describe "emailfuncionarios/index" do
  before(:each) do
    assign(:emailfuncionarios, [
      stub_model(Emailfuncionario,
        :email => "Email",
        :funcionario => nil
      ),
      stub_model(Emailfuncionario,
        :email => "Email",
        :funcionario => nil
      )
    ])
  end

  it "renders a list of emailfuncionarios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
