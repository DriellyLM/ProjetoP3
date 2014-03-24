require 'spec_helper'

describe "funcionarios/show" do
  before(:each) do
    @funcionario = assign(:funcionario, stub_model(Funcionario,
      :nome => "Nome",
      :cpf => "Cpf",
      :sexo => "Sexo",
      :datanascimento => "Datanascimento",
      :cargofuncionario => nil,
      :enderecofuncionario => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Cpf/)
    rendered.should match(/Sexo/)
    rendered.should match(/Datanascimento/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
