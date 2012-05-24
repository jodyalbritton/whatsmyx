require 'spec_helper'

describe "meals/index" do
  before(:each) do
    assign(:meals, [
      stub_model(Meal,
        :name => "Name",
        :ndb => 1,
        :quanity => 2,
        :units => "Units",
        :mcategory_id => "Mcategory",
        :integer => "Integer",
        :user_id => 3
      ),
      stub_model(Meal,
        :name => "Name",
        :ndb => 1,
        :quanity => 2,
        :units => "Units",
        :mcategory_id => "Mcategory",
        :integer => "Integer",
        :user_id => 3
      )
    ])
  end

  it "renders a list of meals" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Units".to_s, :count => 2
    assert_select "tr>td", :text => "Mcategory".to_s, :count => 2
    assert_select "tr>td", :text => "Integer".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
