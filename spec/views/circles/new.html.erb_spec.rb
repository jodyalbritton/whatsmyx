require 'spec_helper'

describe "circles/new" do
  before(:each) do
    assign(:circle, stub_model(Circle,
      :user => nil,
      :name => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new circle form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => circles_path, :method => "post" do
      assert_select "input#circle_user", :name => "circle[user]"
      assert_select "input#circle_name", :name => "circle[name]"
      assert_select "textarea#circle_description", :name => "circle[description]"
    end
  end
end
