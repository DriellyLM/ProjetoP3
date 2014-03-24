require 'spec_helper'

describe "emailfuncionarios/show" do
  before(:each) do
    @emailfuncionario = assign(:emailfuncionario, stub_model(Emailfuncionario,
      :email => "Email",
      :funcionario => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    rendered.should match(//)
  end
end
