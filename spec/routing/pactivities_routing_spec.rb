require "spec_helper"

describe PactivitiesController do
  describe "routing" do

    it "routes to #index" do
      get("/pactivities").should route_to("pactivities#index")
    end

    it "routes to #new" do
      get("/pactivities/new").should route_to("pactivities#new")
    end

    it "routes to #show" do
      get("/pactivities/1").should route_to("pactivities#show", :id => "1")
    end

    it "routes to #edit" do
      get("/pactivities/1/edit").should route_to("pactivities#edit", :id => "1")
    end

    it "routes to #create" do
      post("/pactivities").should route_to("pactivities#create")
    end

    it "routes to #update" do
      put("/pactivities/1").should route_to("pactivities#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/pactivities/1").should route_to("pactivities#destroy", :id => "1")
    end

  end
end
