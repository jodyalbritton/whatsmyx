require 'spec_helper'

describe "gcategories/edit" do
  before(:each) do
    @gcategory = assign(:gcategory, stub_model(Gcategory,
      :name => "MyString"
    ))
  end

  it "renders the edit gcategory form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => gcategories_path(@gcategory), :method => "post" do
      assert_select "input#gcategory_name", :name => "gcategory[name]"
    end
  end
end
