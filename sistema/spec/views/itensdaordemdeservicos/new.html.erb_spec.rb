require 'spec_helper'

describe "itensdaordemdeservicos/new" do
  before(:each) do
    assign(:itensdaordemdeservico, stub_model(Itensdaordemdeservico,
      :itensos => "MyString",
      :quantidade => 1,
      :ordemdeservico => nil,
      :servico => nil
    ).as_new_record)
  end

  it "renders new itensdaordemdeservico form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", itensdaordemdeservicos_path, "post" do
      assert_select "input#itensdaordemdeservico_itensos[name=?]", "itensdaordemdeservico[itensos]"
      assert_select "input#itensdaordemdeservico_quantidade[name=?]", "itensdaordemdeservico[quantidade]"
      assert_select "input#itensdaordemdeservico_ordemdeservico[name=?]", "itensdaordemdeservico[ordemdeservico]"
      assert_select "input#itensdaordemdeservico_servico[name=?]", "itensdaordemdeservico[servico]"
    end
  end
end
