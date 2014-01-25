require 'spec_helper'

describe "associates/show" do
  before(:each) do
    @associate = assign(:associate, stub_model(Associate,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
