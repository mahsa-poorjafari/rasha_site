require 'spec_helper'

describe "slides/edit" do
  before(:each) do
    @slide = assign(:slide, stub_model(Slide,
      :description => "MyText"
    ))
  end

  it "renders the edit slide form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", slide_path(@slide), "post" do
      assert_select "textarea#slide_description[name=?]", "slide[description]"
    end
  end
end
