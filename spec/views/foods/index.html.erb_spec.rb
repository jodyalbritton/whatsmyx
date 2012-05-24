require 'spec_helper'

describe "foods/index" do
  before(:each) do
    assign(:foods, [
      stub_model(Food,
        :shortdesc => "Shortdesc",
        :ndb => "Ndb",
        :id => 1
      ),
      stub_model(Food,
        :shortdesc => "Shortdesc",
        :ndb => "Ndb",
        :id => 1
      )
    ])
  end

  it "renders a list of foods" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Shortdesc".to_s, :count => 2
    assert_select "tr>td", :text => "Ndb".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
