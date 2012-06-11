require 'spec_helper'

describe "dailylogs/new" do
  before(:each) do
    assign(:dailylog, stub_model(Dailylog).as_new_record)
  end

  it "renders new dailylog form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => dailylogs_path, :method => "post" do
    end
  end
end
