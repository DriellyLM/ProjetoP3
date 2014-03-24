require 'spec_helper'

describe "telefonefuncionarios/new" do
  before(:each) do
    assign(:telefonefuncionario, stub_model(Telefonefuncionario,
      :numerotelefone => "MyString",
      :funcionario => nil
    ).as_new_record)
  end

  it "renders new telefonefuncionario form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", telefonefuncionarios_path, "post" do
      assert_select "input#telefonefuncionario_numerotelefone[name=?]", "telefonefuncionario[numerotelefone]"
      assert_select "input#telefonefuncionario_funcionario[name=?]", "telefonefuncionario[funcionario]"
    end
  end
end
