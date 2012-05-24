require 'spec_helper'

describe "meals/show" do
  before(:each) do
    @meal = assign(:meal, stub_model(Meal,
      :name => "Name",
      :ndb => 1,
      :quanity => 2,
      :units => "Units",
      :mcategory_id => "Mcategory",
      :integer => "Integer",
      :user_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Units/)
    rendered.should match(/Mcategory/)
    rendered.should match(/Integer/)
    rendered.should match(/3/)
  end
end
