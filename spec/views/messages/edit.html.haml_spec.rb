require 'spec_helper'

describe "messages/edit" do
  before(:each) do
    @message = assign(:message, stub_model(Message,
      :name => "MyString",
      :email => "MyText",
      :message => "MyText",
      :visited => false,
      :phone => "MyString"
    ))
  end

  it "renders the edit message form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", message_path(@message), "post" do
      assert_select "input#message_name[name=?]", "message[name]"
      assert_select "textarea#message_email[name=?]", "message[email]"
      assert_select "textarea#message_message[name=?]", "message[message]"
      assert_select "input#message_visited[name=?]", "message[visited]"
      assert_select "input#message_phone[name=?]", "message[phone]"
    end
  end
end
