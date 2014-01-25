require 'spec_helper'

describe "information/show" do
  before(:each) do
    @information = assign(:information, stub_model(Information,
      :title => "MyText",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
  end
end
