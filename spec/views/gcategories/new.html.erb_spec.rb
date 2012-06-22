require 'spec_helper'

describe "gcategories/new" do
  before(:each) do
    assign(:gcategory, stub_model(Gcategory,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new gcategory form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => gcategories_path, :method => "post" do
      assert_select "input#gcategory_name", :name => "gcategory[name]"
    end
  end
end
