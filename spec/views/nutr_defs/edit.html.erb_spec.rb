require 'spec_helper'

describe "nutr_defs/edit" do
  before(:each) do
    @nutr_def = assign(:nutr_def, stub_model(NutrDef,
      :nutr_no => 1,
      :units => "MyString",
      :tagname => "MyString",
      :nutrdesc => "MyString"
    ))
  end

  it "renders the edit nutr_def form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => nutr_defs_path(@nutr_def), :method => "post" do
      assert_select "input#nutr_def_nutr_no", :name => "nutr_def[nutr_no]"
      assert_select "input#nutr_def_units", :name => "nutr_def[units]"
      assert_select "input#nutr_def_tagname", :name => "nutr_def[tagname]"
      assert_select "input#nutr_def_nutrdesc", :name => "nutr_def[nutrdesc]"
    end
  end
end
