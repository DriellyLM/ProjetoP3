require 'spec_helper'

describe "enderecofuncionarios/index" do
  before(:each) do
    assign(:enderecofuncionarios, [
      stub_model(Enderecofuncionario,
        :logradouro => "Logradouro",
        :numero => "Numero",
        :bairro => "Bairro",
        :cidade => "Cidade",
        :uf => "Uf",
        :cep => 1
      ),
      stub_model(Enderecofuncionario,
        :logradouro => "Logradouro",
        :numero => "Numero",
        :bairro => "Bairro",
        :cidade => "Cidade",
        :uf => "Uf",
        :cep => 1
      )
    ])
  end

  it "renders a list of enderecofuncionarios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Logradouro".to_s, :count => 2
    assert_select "tr>td", :text => "Numero".to_s, :count => 2
    assert_select "tr>td", :text => "Bairro".to_s, :count => 2
    assert_select "tr>td", :text => "Cidade".to_s, :count => 2
    assert_select "tr>td", :text => "Uf".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
