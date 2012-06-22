require "spec_helper"

describe GlevelsController do
  describe "routing" do

    it "routes to #index" do
      get("/glevels").should route_to("glevels#index")
    end

    it "routes to #new" do
      get("/glevels/new").should route_to("glevels#new")
    end

    it "routes to #show" do
      get("/glevels/1").should route_to("glevels#show", :id => "1")
    end

    it "routes to #edit" do
      get("/glevels/1/edit").should route_to("glevels#edit", :id => "1")
    end

    it "routes to #create" do
      post("/glevels").should route_to("glevels#create")
    end

    it "routes to #update" do
      put("/glevels/1").should route_to("glevels#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/glevels/1").should route_to("glevels#destroy", :id => "1")
    end

  end
end
