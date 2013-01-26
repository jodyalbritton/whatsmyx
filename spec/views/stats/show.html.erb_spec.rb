require 'spec_helper'

describe "stats/show" do
  before(:each) do
    @stat = assign(:stat, stub_model(Stat,
      :name => "Name",
      :stype => "Stype",
      :value => "Value"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Stype/)
    rendered.should match(/Value/)
  end
end
