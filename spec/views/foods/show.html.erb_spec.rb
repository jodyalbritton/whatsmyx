require 'spec_helper'

describe "foods/show" do
  before(:each) do
    @food = assign(:food, stub_model(Food,
      :shortdesc => "Shortdesc",
      :ndb => "Ndb",
      :id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Shortdesc/)
    rendered.should match(/Ndb/)
    rendered.should match(/1/)
  end
end
