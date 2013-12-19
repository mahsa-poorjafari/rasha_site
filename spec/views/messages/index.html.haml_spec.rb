require 'spec_helper'

describe "messages/index" do
  before(:each) do
    assign(:messages, [
      stub_model(Message,
        :name => "Name",
        :email => "MyText",
        :message => "MyText",
        :visited => false,
        :phone => "Phone"
      ),
      stub_model(Message,
        :name => "Name",
        :email => "MyText",
        :message => "MyText",
        :visited => false,
        :phone => "Phone"
      )
    ])
  end

  it "renders a list of messages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
  end
end
