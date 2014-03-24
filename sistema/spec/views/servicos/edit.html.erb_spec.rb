require 'spec_helper'

describe "servicos/edit" do
  before(:each) do
    @servico = assign(:servico, stub_model(Servico,
      :tipodeservico => "MyString"
    ))
  end

  it "renders the edit servico form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", servico_path(@servico), "post" do
      assert_select "input#servico_tipodeservico[name=?]", "servico[tipodeservico]"
    end
  end
end
