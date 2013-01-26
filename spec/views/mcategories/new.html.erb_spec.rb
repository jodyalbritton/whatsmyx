require 'spec_helper'

describe "mcategories/new" do
  before(:each) do
    assign(:mcategory, stub_model(Mcategory,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new mcategory form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => mcategories_path, :method => "post" do
      assert_select "input#mcategory_name", :name => "mcategory[name]"
    end
  end
end
