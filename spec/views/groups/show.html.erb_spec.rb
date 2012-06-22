require 'spec_helper'

describe "groups/show" do
  before(:each) do
    @group = assign(:group, stub_model(Group,
      :name => "Name",
      :user => "",
      :privacy_level => "Privacy Level",
      :active => false,
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(//)
    rendered.should match(/Privacy Level/)
    rendered.should match(/false/)
    rendered.should match(/MyText/)
  end
end
