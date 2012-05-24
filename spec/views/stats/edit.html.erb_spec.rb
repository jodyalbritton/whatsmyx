require 'spec_helper'

describe "stats/edit" do
  before(:each) do
    @stat = assign(:stat, stub_model(Stat,
      :name => "MyString",
      :stype => "MyString",
      :value => "MyString"
    ))
  end

  it "renders the edit stat form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => stats_path(@stat), :method => "post" do
      assert_select "input#stat_name", :name => "stat[name]"
      assert_select "input#stat_stype", :name => "stat[stype]"
      assert_select "input#stat_value", :name => "stat[value]"
    end
  end
end
