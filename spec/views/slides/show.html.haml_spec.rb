require 'spec_helper'

describe "slides/show" do
  before(:each) do
    @slide = assign(:slide, stub_model(Slide,
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
