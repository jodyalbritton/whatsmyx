require 'spec_helper'

describe "foods/edit" do
  before(:each) do
    @food = assign(:food, stub_model(Food,
      :shortdesc => "MyString",
      :ndb => "MyString",
      :id => 1
    ))
  end

  it "renders the edit food form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => foods_path(@food), :method => "post" do
      assert_select "input#food_shortdesc", :name => "food[shortdesc]"
      assert_select "input#food_ndb", :name => "food[ndb]"
      assert_select "input#food_id", :name => "food[id]"
    end
  end
end
