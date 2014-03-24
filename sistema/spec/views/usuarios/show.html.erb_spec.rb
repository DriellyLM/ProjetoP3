require 'spec_helper'

describe "usuarios/show" do
  before(:each) do
    @usuario = assign(:usuario, stub_model(Usuario,
      :login => "Login",
      :senha => "Senha",
      :ativo => "Ativo",
      :funcionario => nil,
      :niveldeacesso => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Login/)
    rendered.should match(/Senha/)
    rendered.should match(/Ativo/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
