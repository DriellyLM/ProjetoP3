require 'spec_helper'

describe "usuarios/edit" do
  before(:each) do
    @usuario = assign(:usuario, stub_model(Usuario,
      :login => "MyString",
      :senha => "MyString",
      :ativo => "MyString",
      :funcionario => nil,
      :niveldeacesso => nil
    ))
  end

  it "renders the edit usuario form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", usuario_path(@usuario), "post" do
      assert_select "input#usuario_login[name=?]", "usuario[login]"
      assert_select "input#usuario_senha[name=?]", "usuario[senha]"
      assert_select "input#usuario_ativo[name=?]", "usuario[ativo]"
      assert_select "input#usuario_funcionario[name=?]", "usuario[funcionario]"
      assert_select "input#usuario_niveldeacesso[name=?]", "usuario[niveldeacesso]"
    end
  end
end
