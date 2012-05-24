require 'spec_helper'

describe "mcategories/edit" do
  before(:each) do
    @mcategory = assign(:mcategory, stub_model(Mcategory,
      :name => "MyString"
    ))
  end

  it "renders the edit mcategory form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => mcategories_path(@mcategory), :method => "post" do
      assert_select "input#mcategory_name", :name => "mcategory[name]"
    end
  end
end
