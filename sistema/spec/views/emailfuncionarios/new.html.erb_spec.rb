require 'spec_helper'

describe "emailfuncionarios/new" do
  before(:each) do
    assign(:emailfuncionario, stub_model(Emailfuncionario,
      :email => "MyString",
      :funcionario => nil
    ).as_new_record)
  end

  it "renders new emailfuncionario form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", emailfuncionarios_path, "post" do
      assert_select "input#emailfuncionario_email[name=?]", "emailfuncionario[email]"
      assert_select "input#emailfuncionario_funcionario[name=?]", "emailfuncionario[funcionario]"
    end
  end
end
