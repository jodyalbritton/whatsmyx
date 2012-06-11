require 'spec_helper'

describe "dailylogs/index" do
  before(:each) do
    assign(:dailylogs, [
      stub_model(Dailylog),
      stub_model(Dailylog)
    ])
  end

  it "renders a list of dailylogs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
