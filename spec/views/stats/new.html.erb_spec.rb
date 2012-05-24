require 'spec_helper'

describe "stats/new" do
  before(:each) do
    assign(:stat, stub_model(Stat,
      :name => "MyString",
      :stype => "MyString",
      :value => "MyString"
    ).as_new_record)
  end

  it "renders new stat form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => stats_path, :method => "post" do
      assert_select "input#stat_name", :name => "stat[name]"
      assert_select "input#stat_stype", :name => "stat[stype]"
      assert_select "input#stat_value", :name => "stat[value]"
    end
  end
end
