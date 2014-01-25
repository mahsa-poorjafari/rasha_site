require 'spec_helper'

describe "associates/edit" do
  before(:each) do
    @associate = assign(:associate, stub_model(Associate,
      :name => "MyString"
    ))
  end

  it "renders the edit associate form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", associate_path(@associate), "post" do
      assert_select "input#associate_name[name=?]", "associate[name]"
    end
  end
end
