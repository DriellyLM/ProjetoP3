require 'spec_helper'

describe "enderecofuncionarios/new" do
  before(:each) do
    assign(:enderecofuncionario, stub_model(Enderecofuncionario,
      :logradouro => "MyString",
      :numero => "MyString",
      :bairro => "MyString",
      :cidade => "MyString",
      :uf => "MyString",
      :cep => 1
    ).as_new_record)
  end

  it "renders new enderecofuncionario form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", enderecofuncionarios_path, "post" do
      assert_select "input#enderecofuncionario_logradouro[name=?]", "enderecofuncionario[logradouro]"
      assert_select "input#enderecofuncionario_numero[name=?]", "enderecofuncionario[numero]"
      assert_select "input#enderecofuncionario_bairro[name=?]", "enderecofuncionario[bairro]"
      assert_select "input#enderecofuncionario_cidade[name=?]", "enderecofuncionario[cidade]"
      assert_select "input#enderecofuncionario_uf[name=?]", "enderecofuncionario[uf]"
      assert_select "input#enderecofuncionario_cep[name=?]", "enderecofuncionario[cep]"
    end
  end
end
