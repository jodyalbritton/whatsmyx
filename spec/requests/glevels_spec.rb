require 'spec_helper'

describe "Glevels" do
  describe "GET /glevels" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get glevels_path
      response.status.should be(200)
    end
  end
end
