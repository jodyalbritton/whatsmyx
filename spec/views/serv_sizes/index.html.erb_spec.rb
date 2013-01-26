require 'spec_helper'

describe "serv_sizes/index" do
  before(:each) do
    assign(:serv_sizes, [
      stub_model(ServSize,
        :name => "Name",
        :value => 1.5,
        :ingredient => nil
      ),
      stub_model(ServSize,
        :name => "Name",
        :value => 1.5,
        :ingredient => nil
      )
    ])
  end

  it "renders a list of serv_sizes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
