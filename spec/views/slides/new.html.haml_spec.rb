require 'spec_helper'

describe "slides/new" do
  before(:each) do
    assign(:slide, stub_model(Slide,
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new slide form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", slides_path, "post" do
      assert_select "textarea#slide_description[name=?]", "slide[description]"
    end
  end
end
