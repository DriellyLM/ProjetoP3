require 'spec_helper'

describe "servicos/new" do
  before(:each) do
    assign(:servico, stub_model(Servico,
      :tipodeservico => "MyString"
    ).as_new_record)
  end

  it "renders new servico form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", servicos_path, "post" do
      assert_select "input#servico_tipodeservico[name=?]", "servico[tipodeservico]"
    end
  end
end
