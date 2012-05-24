require 'spec_helper'

describe "meals/new" do
  before(:each) do
    assign(:meal, stub_model(Meal,
      :name => "MyString",
      :ndb => 1,
      :quanity => 1,
      :units => "MyString",
      :mcategory_id => "MyString",
      :integer => "MyString",
      :user_id => 1
    ).as_new_record)
  end

  it "renders new meal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => meals_path, :method => "post" do
      assert_select "input#meal_name", :name => "meal[name]"
      assert_select "input#meal_ndb", :name => "meal[ndb]"
      assert_select "input#meal_quanity", :name => "meal[quanity]"
      assert_select "input#meal_units", :name => "meal[units]"
      assert_select "input#meal_mcategory_id", :name => "meal[mcategory_id]"
      assert_select "input#meal_integer", :name => "meal[integer]"
      assert_select "input#meal_user_id", :name => "meal[user_id]"
    end
  end
end
