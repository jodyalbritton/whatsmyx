require 'spec_helper'

describe "nutr_defs/index" do
  before(:each) do
    assign(:nutr_defs, [
      stub_model(NutrDef,
        :nutr_no => 1,
        :units => "Units",
        :tagname => "Tagname",
        :nutrdesc => "Nutrdesc"
      ),
      stub_model(NutrDef,
        :nutr_no => 1,
        :units => "Units",
        :tagname => "Tagname",
        :nutrdesc => "Nutrdesc"
      )
    ])
  end

  it "renders a list of nutr_defs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Units".to_s, :count => 2
    assert_select "tr>td", :text => "Tagname".to_s, :count => 2
    assert_select "tr>td", :text => "Nutrdesc".to_s, :count => 2
  end
end
