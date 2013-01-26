require 'spec_helper'

describe "nutr_defs/show" do
  before(:each) do
    @nutr_def = assign(:nutr_def, stub_model(NutrDef,
      :nutr_no => 1,
      :units => "Units",
      :tagname => "Tagname",
      :nutrdesc => "Nutrdesc"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Units/)
    rendered.should match(/Tagname/)
    rendered.should match(/Nutrdesc/)
  end
end
