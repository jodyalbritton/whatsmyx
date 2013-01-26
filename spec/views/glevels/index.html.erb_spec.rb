require 'spec_helper'

describe "glevels/index" do
  before(:each) do
    assign(:glevels, [
      stub_model(Glevel,
        :name => "Name"
      ),
      stub_model(Glevel,
        :name => "Name"
      )
    ])
  end

  it "renders a list of glevels" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
