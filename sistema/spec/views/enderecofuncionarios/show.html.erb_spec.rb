require 'spec_helper'

describe "enderecofuncionarios/show" do
  before(:each) do
    @enderecofuncionario = assign(:enderecofuncionario, stub_model(Enderecofuncionario,
      :logradouro => "Logradouro",
      :numero => "Numero",
      :bairro => "Bairro",
      :cidade => "Cidade",
      :uf => "Uf",
      :cep => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Logradouro/)
    rendered.should match(/Numero/)
    rendered.should match(/Bairro/)
    rendered.should match(/Cidade/)
    rendered.should match(/Uf/)
    rendered.should match(/1/)
  end
end
