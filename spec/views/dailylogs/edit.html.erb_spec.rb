require 'spec_helper'

describe "dailylogs/edit" do
  before(:each) do
    @dailylog = assign(:dailylog, stub_model(Dailylog))
  end

  it "renders the edit dailylog form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => dailylogs_path(@dailylog), :method => "post" do
    end
  end
end
