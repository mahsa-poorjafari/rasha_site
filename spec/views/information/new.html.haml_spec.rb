require 'spec_helper'

describe "information/new" do
  before(:each) do
    assign(:information, stub_model(Information,
      :title => "MyText",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new information form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", information_index_path, "post" do
      assert_select "textarea#information_title[name=?]", "information[title]"
      assert_select "textarea#information_description[name=?]", "information[description]"
    end
  end
end
