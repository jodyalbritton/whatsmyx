require 'spec_helper'

describe "nutr_defs/new" do
  before(:each) do
    assign(:nutr_def, stub_model(NutrDef,
      :nutr_no => 1,
      :units => "MyString",
      :tagname => "MyString",
      :nutrdesc => "MyString"
    ).as_new_record)
  end

  it "renders new nutr_def form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => nutr_defs_path, :method => "post" do
      assert_select "input#nutr_def_nutr_no", :name => "nutr_def[nutr_no]"
      assert_select "input#nutr_def_units", :name => "nutr_def[units]"
      assert_select "input#nutr_def_tagname", :name => "nutr_def[tagname]"
      assert_select "input#nutr_def_nutrdesc", :name => "nutr_def[nutrdesc]"
    end
  end
end
