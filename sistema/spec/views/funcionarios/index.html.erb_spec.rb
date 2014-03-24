require 'spec_helper'

describe "funcionarios/index" do
  before(:each) do
    assign(:funcionarios, [
      stub_model(Funcionario,
        :email => "Email",
        :telefone => "Telefone",
        :nome => "Nome",
        :cpf => "Cpf",
        :sexo => "Sexo",
        :datanascimento => "Datanascimento",
        :cargofuncionario => nil,
        :enderecofuncionario => nil
      ),
      stub_model(Funcionario,
        :email => "Email",
        :telefone => "Telefone",
        :nome => "Nome",
        :cpf => "Cpf",
        :sexo => "Sexo",
        :datanascimento => "Datanascimento",
        :cargofuncionario => nil,
        :enderecofuncionario => nil
      )
    ])
  end

  it "renders a list of funcionarios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Cpf".to_s, :count => 2
    assert_select "tr>td", :text => "Sexo".to_s, :count => 2
    assert_select "tr>td", :text => "Datanascimento".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
