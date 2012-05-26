require 'spec_helper'

describe "checklists/edit" do
  before(:each) do
    @checklist = assign(:checklist, stub_model(Checklist,
      :name => "MyString"
    ))
  end

  it "renders the edit checklist form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => checklists_path(@checklist), :method => "post" do
      assert_select "input#checklist_name", :name => "checklist[name]"
    end
  end
end
