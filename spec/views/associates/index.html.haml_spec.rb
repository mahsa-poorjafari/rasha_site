require 'spec_helper'

describe "associates/index" do
  before(:each) do
    assign(:associates, [
      stub_model(Associate,
        :name => "Name"
      ),
      stub_model(Associate,
        :name => "Name"
      )
    ])
  end

  it "renders a list of associates" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
