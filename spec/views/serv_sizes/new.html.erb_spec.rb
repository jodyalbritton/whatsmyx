require 'spec_helper'

describe "serv_sizes/new" do
  before(:each) do
    assign(:serv_size, stub_model(ServSize,
      :name => "MyString",
      :value => 1.5,
      :ingredient => nil
    ).as_new_record)
  end

  it "renders new serv_size form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => serv_sizes_path, :method => "post" do
      assert_select "input#serv_size_name", :name => "serv_size[name]"
      assert_select "input#serv_size_value", :name => "serv_size[value]"
      assert_select "input#serv_size_ingredient", :name => "serv_size[ingredient]"
    end
  end
end
