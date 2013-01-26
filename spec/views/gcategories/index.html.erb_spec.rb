require 'spec_helper'

describe "gcategories/index" do
  before(:each) do
    assign(:gcategories, [
      stub_model(Gcategory,
        :name => "Name"
      ),
      stub_model(Gcategory,
        :name => "Name"
      )
    ])
  end

  it "renders a list of gcategories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
