require 'spec_helper'

describe "niveldeacessos/new" do
  before(:each) do
    assign(:niveldeacesso, stub_model(Niveldeacesso,
      :descricaonivel => "MyString"
    ).as_new_record)
  end

  it "renders new niveldeacesso form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", niveldeacessos_path, "post" do
      assert_select "input#niveldeacesso_descricaonivel[name=?]", "niveldeacesso[descricaonivel]"
    end
  end
end
