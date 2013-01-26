require 'spec_helper'

describe "circles/show" do
  before(:each) do
    @circle = assign(:circle, stub_model(Circle,
      :user => nil,
      :name => "Name",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
  end
end
