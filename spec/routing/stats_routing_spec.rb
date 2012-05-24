require "spec_helper"

describe StatsController do
  describe "routing" do

    it "routes to #index" do
      get("/stats").should route_to("stats#index")
    end

    it "routes to #new" do
      get("/stats/new").should route_to("stats#new")
    end

    it "routes to #show" do
      get("/stats/1").should route_to("stats#show", :id => "1")
    end

    it "routes to #edit" do
      get("/stats/1/edit").should route_to("stats#edit", :id => "1")
    end

    it "routes to #create" do
      post("/stats").should route_to("stats#create")
    end

    it "routes to #update" do
      put("/stats/1").should route_to("stats#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/stats/1").should route_to("stats#destroy", :id => "1")
    end

  end
end
