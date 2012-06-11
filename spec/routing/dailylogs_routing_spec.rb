require "spec_helper"

describe DailylogsController do
  describe "routing" do

    it "routes to #index" do
      get("/dailylogs").should route_to("dailylogs#index")
    end

    it "routes to #new" do
      get("/dailylogs/new").should route_to("dailylogs#new")
    end

    it "routes to #show" do
      get("/dailylogs/1").should route_to("dailylogs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/dailylogs/1/edit").should route_to("dailylogs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/dailylogs").should route_to("dailylogs#create")
    end

    it "routes to #update" do
      put("/dailylogs/1").should route_to("dailylogs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/dailylogs/1").should route_to("dailylogs#destroy", :id => "1")
    end

  end
end
