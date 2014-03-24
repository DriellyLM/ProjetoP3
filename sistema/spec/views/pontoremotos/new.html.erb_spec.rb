require 'spec_helper'

describe "pontoremotos/new" do
  before(:each) do
    assign(:pontoremoto, stub_model(Pontoremoto,
      :endereco => "MyString"
    ).as_new_record)
  end

  it "renders new pontoremoto form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", pontoremotos_path, "post" do
      assert_select "input#pontoremoto_endereco[name=?]", "pontoremoto[endereco]"
    end
  end
end
