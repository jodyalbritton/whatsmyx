require 'spec_helper'

describe "serv_sizes/show" do
  before(:each) do
    @serv_size = assign(:serv_size, stub_model(ServSize,
      :name => "Name",
      :value => 1.5,
      :ingredient => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1.5/)
    rendered.should match(//)
  end
end
