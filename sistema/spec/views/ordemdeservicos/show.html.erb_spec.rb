require 'spec_helper'

describe "ordemdeservicos/show" do
  before(:each) do
    @ordemdeservico = assign(:ordemdeservico, stub_model(Ordemdeservico,
      :descricaoservico => "Descricaoservico",
      :descricaoproduto => "Descricaoproduto",
      :datainicialos => "Datainicialos",
      :datafinalos => "Datafinalos",
      :usuario => nil,
      :pontoremoto => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Descricaoservico/)
    rendered.should match(/Descricaoproduto/)
    rendered.should match(/Datainicialos/)
    rendered.should match(/Datafinalos/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
