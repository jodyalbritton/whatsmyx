require 'spec_helper'

describe "checklists/new" do
  before(:each) do
    assign(:checklist, stub_model(Checklist,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new checklist form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => checklists_path, :method => "post" do
      assert_select "input#checklist_name", :name => "checklist[name]"
    end
  end
end
