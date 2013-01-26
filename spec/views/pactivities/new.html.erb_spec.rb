require 'spec_helper'

describe "pactivities/new" do
  before(:each) do
    assign(:pactivity, stub_model(Pactivity,
      :name => "MyString",
      :user => nil,
      :exercise => nil,
      :duration => 1.5
    ).as_new_record)
  end

  it "renders new pactivity form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pactivities_path, :method => "post" do
      assert_select "input#pactivity_name", :name => "pactivity[name]"
      assert_select "input#pactivity_user", :name => "pactivity[user]"
      assert_select "input#pactivity_exercise", :name => "pactivity[exercise]"
      assert_select "input#pactivity_duration", :name => "pactivity[duration]"
    end
  end
end
