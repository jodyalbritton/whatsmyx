require 'spec_helper'

describe "mcategories/index" do
  before(:each) do
    assign(:mcategories, [
      stub_model(Mcategory,
        :name => "Name"
      ),
      stub_model(Mcategory,
        :name => "Name"
      )
    ])
  end

  it "renders a list of mcategories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
