require 'spec_helper'

describe "checklists/index" do
  before(:each) do
    assign(:checklists, [
      stub_model(Checklist,
        :name => "Name"
      ),
      stub_model(Checklist,
        :name => "Name"
      )
    ])
  end

  it "renders a list of checklists" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
