require 'spec_helper'

describe "pontoremotos/edit" do
  before(:each) do
    @pontoremoto = assign(:pontoremoto, stub_model(Pontoremoto,
      :endereco => "MyString"
    ))
  end

  it "renders the edit pontoremoto form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", pontoremoto_path(@pontoremoto), "post" do
      assert_select "input#pontoremoto_endereco[name=?]", "pontoremoto[endereco]"
    end
  end
end
