require 'spec_helper'

describe "pactivities/index" do
  before(:each) do
    assign(:pactivities, [
      stub_model(Pactivity,
        :name => "Name",
        :user => nil,
        :exercise => nil,
        :duration => 1.5
      ),
      stub_model(Pactivity,
        :name => "Name",
        :user => nil,
        :exercise => nil,
        :duration => 1.5
      )
    ])
  end

  it "renders a list of pactivities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
