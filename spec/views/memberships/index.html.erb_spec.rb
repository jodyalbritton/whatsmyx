require 'spec_helper'

describe "memberships/index" do
  before(:each) do
    assign(:memberships, [
      stub_model(Membership,
        :user => nil,
        :pending => false,
        :group => nil,
        :blocked => false,
        :glevel => nil
      ),
      stub_model(Membership,
        :user => nil,
        :pending => false,
        :group => nil,
        :blocked => false,
        :glevel => nil
      )
    ])
  end

  it "renders a list of memberships" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
