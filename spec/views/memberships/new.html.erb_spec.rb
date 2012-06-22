require 'spec_helper'

describe "memberships/new" do
  before(:each) do
    assign(:membership, stub_model(Membership,
      :user => nil,
      :pending => false,
      :group => nil,
      :blocked => false,
      :glevel => nil
    ).as_new_record)
  end

  it "renders new membership form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => memberships_path, :method => "post" do
      assert_select "input#membership_user", :name => "membership[user]"
      assert_select "input#membership_pending", :name => "membership[pending]"
      assert_select "input#membership_group", :name => "membership[group]"
      assert_select "input#membership_blocked", :name => "membership[blocked]"
      assert_select "input#membership_glevel", :name => "membership[glevel]"
    end
  end
end
