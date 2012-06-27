require 'spec_helper'

describe "pactivities/show" do
  before(:each) do
    @pactivity = assign(:pactivity, stub_model(Pactivity,
      :name => "Name",
      :user => nil,
      :exercise => nil,
      :duration => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/1.5/)
  end
end
