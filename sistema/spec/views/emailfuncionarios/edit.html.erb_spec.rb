require 'spec_helper'

describe "emailfuncionarios/edit" do
  before(:each) do
    @emailfuncionario = assign(:emailfuncionario, stub_model(Emailfuncionario,
      :email => "MyString",
      :funcionario => nil
    ))
  end

  it "renders the edit emailfuncionario form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", emailfuncionario_path(@emailfuncionario), "post" do
      assert_select "input#emailfuncionario_email[name=?]", "emailfuncionario[email]"
      assert_select "input#emailfuncionario_funcionario[name=?]", "emailfuncionario[funcionario]"
    end
  end
end
