require 'spec_helper'

describe "glevels/edit" do
  before(:each) do
    @glevel = assign(:glevel, stub_model(Glevel,
      :name => "MyString"
    ))
  end

  it "renders the edit glevel form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => glevels_path(@glevel), :method => "post" do
      assert_select "input#glevel_name", :name => "glevel[name]"
    end
  end
end
