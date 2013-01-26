require 'spec_helper'

describe "glevels/show" do
  before(:each) do
    @glevel = assign(:glevel, stub_model(Glevel,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
