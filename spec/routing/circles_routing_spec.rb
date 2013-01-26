require "spec_helper"

describe CirclesController do
  describe "routing" do

    it "routes to #index" do
      get("/circles").should route_to("circles#index")
    end

    it "routes to #new" do
      get("/circles/new").should route_to("circles#new")
    end

    it "routes to #show" do
      get("/circles/1").should route_to("circles#show", :id => "1")
    end

    it "routes to #edit" do
      get("/circles/1/edit").should route_to("circles#edit", :id => "1")
    end

    it "routes to #create" do
      post("/circles").should route_to("circles#create")
    end

    it "routes to #update" do
      put("/circles/1").should route_to("circles#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/circles/1").should route_to("circles#destroy", :id => "1")
    end

  end
end
