require 'spec_helper'

describe "cargofuncionarios/edit" do
  before(:each) do
    @cargofuncionario = assign(:cargofuncionario, stub_model(Cargofuncionario,
      :cargofuncionario => "MyString"
    ))
  end

  it "renders the edit cargofuncionario form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cargofuncionario_path(@cargofuncionario), "post" do
      assert_select "input#cargofuncionario_cargofuncionario[name=?]", "cargofuncionario[cargofuncionario]"
    end
  end
end
