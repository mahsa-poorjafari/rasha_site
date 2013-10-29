require 'spec_helper'

describe "services/edit" do
  before(:each) do
    @service = assign(:service, stub_model(Service,
      :title => "MyString",
      :img_url => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit service form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", service_path(@service), "post" do
      assert_select "input#service_title[name=?]", "service[title]"
      assert_select "input#service_img_url[name=?]", "service[img_url]"
      assert_select "textarea#service_description[name=?]", "service[description]"
    end
  end
end
