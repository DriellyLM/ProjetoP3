require 'spec_helper'

describe "cargofuncionarios/new" do
  before(:each) do
    assign(:cargofuncionario, stub_model(Cargofuncionario,
      :cargofuncionario => "MyString"
    ).as_new_record)
  end

  it "renders new cargofuncionario form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cargofuncionarios_path, "post" do
      assert_select "input#cargofuncionario_cargofuncionario[name=?]", "cargofuncionario[cargofuncionario]"
    end
  end
end
