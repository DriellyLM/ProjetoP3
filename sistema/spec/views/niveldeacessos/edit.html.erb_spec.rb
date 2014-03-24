require 'spec_helper'

describe "niveldeacessos/edit" do
  before(:each) do
    @niveldeacesso = assign(:niveldeacesso, stub_model(Niveldeacesso,
      :descricaonivel => "MyString"
    ))
  end

  it "renders the edit niveldeacesso form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", niveldeacesso_path(@niveldeacesso), "post" do
      assert_select "input#niveldeacesso_descricaonivel[name=?]", "niveldeacesso[descricaonivel]"
    end
  end
end
