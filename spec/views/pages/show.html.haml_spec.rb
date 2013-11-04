require 'spec_helper'

describe "pages/show" do
  before(:each) do
    @page = assign(:page, stub_model(Page,
      :page_title => "Page Title",
      :page_html_en => "MyText",
      :page_html_fa => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Page Title/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
  end
end
