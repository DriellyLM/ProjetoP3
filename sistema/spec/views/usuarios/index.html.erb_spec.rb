require 'spec_helper'

describe "usuarios/index" do
  before(:each) do
    assign(:usuarios, [
      stub_model(Usuario,
        :login => "Login",
        :senha => "Senha",
        :ativo => "Ativo",
        :funcionario => nil,
        :niveldeacesso => nil
      ),
      stub_model(Usuario,
        :login => "Login",
        :senha => "Senha",
        :ativo => "Ativo",
        :funcionario => nil,
        :niveldeacesso => nil
      )
    ])
  end

  it "renders a list of usuarios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Login".to_s, :count => 2
    assert_select "tr>td", :text => "Senha".to_s, :count => 2
    assert_select "tr>td", :text => "Ativo".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
