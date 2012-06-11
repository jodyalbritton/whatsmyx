require 'spec_helper'

describe "dailylogs/show" do
  before(:each) do
    @dailylog = assign(:dailylog, stub_model(Dailylog))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
