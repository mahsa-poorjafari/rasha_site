require 'spec_helper'

describe "associates/new" do
  before(:each) do
    assign(:associate, stub_model(Associate,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new associate form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", associates_path, "post" do
      assert_select "input#associate_name[name=?]", "associate[name]"
    end
  end
end
