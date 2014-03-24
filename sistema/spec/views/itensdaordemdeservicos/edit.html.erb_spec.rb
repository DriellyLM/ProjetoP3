require 'spec_helper'

describe "itensdaordemdeservicos/edit" do
  before(:each) do
    @itensdaordemdeservico = assign(:itensdaordemdeservico, stub_model(Itensdaordemdeservico,
      :itensos => "MyString",
      :quantidade => 1,
      :ordemdeservico => nil,
      :servico => nil
    ))
  end

  it "renders the edit itensdaordemdeservico form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", itensdaordemdeservico_path(@itensdaordemdeservico), "post" do
      assert_select "input#itensdaordemdeservico_itensos[name=?]", "itensdaordemdeservico[itensos]"
      assert_select "input#itensdaordemdeservico_quantidade[name=?]", "itensdaordemdeservico[quantidade]"
      assert_select "input#itensdaordemdeservico_ordemdeservico[name=?]", "itensdaordemdeservico[ordemdeservico]"
      assert_select "input#itensdaordemdeservico_servico[name=?]", "itensdaordemdeservico[servico]"
    end
  end
end
