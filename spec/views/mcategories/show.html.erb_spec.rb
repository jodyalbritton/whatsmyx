require 'spec_helper'

describe "mcategories/show" do
  before(:each) do
    @mcategory = assign(:mcategory, stub_model(Mcategory,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
