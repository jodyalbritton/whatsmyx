require 'spec_helper'

describe "glevels/new" do
  before(:each) do
    assign(:glevel, stub_model(Glevel,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new glevel form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => glevels_path, :method => "post" do
      assert_select "input#glevel_name", :name => "glevel[name]"
    end
  end
end
