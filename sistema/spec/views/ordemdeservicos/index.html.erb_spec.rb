require 'spec_helper'

describe "ordemdeservicos/index" do
  before(:each) do
    assign(:ordemdeservicos, [
      stub_model(Ordemdeservico,
        :descricaoservico => "Descricaoservico",
        :descricaoproduto => "Descricaoproduto",
        :datainicialos => "Datainicialos",
        :datafinalos => "Datafinalos",
        :usuario => nil,
        :pontoremoto => nil
      ),
      stub_model(Ordemdeservico,
        :descricaoservico => "Descricaoservico",
        :descricaoproduto => "Descricaoproduto",
        :datainicialos => "Datainicialos",
        :datafinalos => "Datafinalos",
        :usuario => nil,
        :pontoremoto => nil
      )
    ])
  end

  it "renders a list of ordemdeservicos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Descricaoservico".to_s, :count => 2
    assert_select "tr>td", :text => "Descricaoproduto".to_s, :count => 2
    assert_select "tr>td", :text => "Datainicialos".to_s, :count => 2
    assert_select "tr>td", :text => "Datafinalos".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
