require 'spec_helper'

describe "notifications/new" do
  before(:each) do
    assign(:notification, stub_model(Notification,
      :user => nil,
      :activity => nil,
      :read => false
    ).as_new_record)
  end

  it "renders new notification form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => notifications_path, :method => "post" do
      assert_select "input#notification_user", :name => "notification[user]"
      assert_select "input#notification_activity", :name => "notification[activity]"
      assert_select "input#notification_read", :name => "notification[read]"
    end
  end
end
