require 'spec_helper'

describe "meals/edit" do
  before(:each) do
    @meal = assign(:meal, stub_model(Meal,
      :user => nil,
      :mcategory => nil,
      :ingredient => nil
    ))
  end

  it "renders the edit meal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => meals_path(@meal), :method => "post" do
      assert_select "input#meal_user", :name => "meal[user]"
      assert_select "input#meal_mcategory", :name => "meal[mcategory]"
      assert_select "input#meal_ingredient", :name => "meal[ingredient]"
    end
  end
end
