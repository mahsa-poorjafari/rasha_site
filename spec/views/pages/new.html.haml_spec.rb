require 'spec_helper'

describe "pages/new" do
  before(:each) do
    assign(:page, stub_model(Page,
      :page_title => "MyString",
      :page_html_en => "MyText",
      :page_html_fa => "MyText"
    ).as_new_record)
  end

  it "renders new page form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", pages_path, "post" do
      assert_select "input#page_page_title[name=?]", "page[page_title]"
      assert_select "textarea#page_page_html_en[name=?]", "page[page_html_en]"
      assert_select "textarea#page_page_html_fa[name=?]", "page[page_html_fa]"
    end
  end
end
