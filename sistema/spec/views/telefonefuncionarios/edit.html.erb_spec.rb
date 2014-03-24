require 'spec_helper'

describe "telefonefuncionarios/edit" do
  before(:each) do
    @telefonefuncionario = assign(:telefonefuncionario, stub_model(Telefonefuncionario,
      :numerotelefone => "MyString",
      :funcionario => nil
    ))
  end

  it "renders the edit telefonefuncionario form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", telefonefuncionario_path(@telefonefuncionario), "post" do
      assert_select "input#telefonefuncionario_numerotelefone[name=?]", "telefonefuncionario[numerotelefone]"
      assert_select "input#telefonefuncionario_funcionario[name=?]", "telefonefuncionario[funcionario]"
    end
  end
end
