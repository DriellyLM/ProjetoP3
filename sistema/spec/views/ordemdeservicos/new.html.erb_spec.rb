require 'spec_helper'

describe "ordemdeservicos/new" do
  before(:each) do
    assign(:ordemdeservico, stub_model(Ordemdeservico,
      :descricaoservico => "MyString",
      :descricaoproduto => "MyString",
      :datainicialos => "MyString",
      :datafinalos => "MyString",
      :usuario => nil,
      :pontoremoto => nil
    ).as_new_record)
  end

  it "renders new ordemdeservico form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", ordemdeservicos_path, "post" do
      assert_select "input#ordemdeservico_descricaoservico[name=?]", "ordemdeservico[descricaoservico]"
      assert_select "input#ordemdeservico_descricaoproduto[name=?]", "ordemdeservico[descricaoproduto]"
      assert_select "input#ordemdeservico_datainicialos[name=?]", "ordemdeservico[datainicialos]"
      assert_select "input#ordemdeservico_datafinalos[name=?]", "ordemdeservico[datafinalos]"
      assert_select "input#ordemdeservico_usuario[name=?]", "ordemdeservico[usuario]"
      assert_select "input#ordemdeservico_pontoremoto[name=?]", "ordemdeservico[pontoremoto]"
    end
  end
end
