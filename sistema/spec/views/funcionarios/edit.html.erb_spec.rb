require 'spec_helper'

describe "funcionarios/edit" do
  before(:each) do
    @funcionario = assign(:funcionario, stub_model(Funcionario,
      :nome => "MyString",
      :cpf => "MyString",
      :sexo => "MyString",
      :datanascimento => "MyString",
      :cargofuncionario => nil,
      :enderecofuncionario => nil
    ))
  end

  it "renders the edit funcionario form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", funcionario_path(@funcionario), "post" do
      assert_select "input#funcionario_nome[name=?]", "funcionario[nome]"
      assert_select "input#funcionario_cpf[name=?]", "funcionario[cpf]"
      assert_select "input#funcionario_sexo[name=?]", "funcionario[sexo]"
      assert_select "input#funcionario_datanascimento[name=?]", "funcionario[datanascimento]"
      assert_select "input#funcionario_cargofuncionario[name=?]", "funcionario[cargofuncionario]"
      assert_select "input#funcionario_enderecofuncionario[name=?]", "funcionario[enderecofuncionario]"
    end
  end
end
