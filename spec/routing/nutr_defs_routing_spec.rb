require "spec_helper"

describe NutrDefsController do
  describe "routing" do

    it "routes to #index" do
      get("/nutr_defs").should route_to("nutr_defs#index")
    end

    it "routes to #new" do
      get("/nutr_defs/new").should route_to("nutr_defs#new")
    end

    it "routes to #show" do
      get("/nutr_defs/1").should route_to("nutr_defs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/nutr_defs/1/edit").should route_to("nutr_defs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/nutr_defs").should route_to("nutr_defs#create")
    end

    it "routes to #update" do
      put("/nutr_defs/1").should route_to("nutr_defs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/nutr_defs/1").should route_to("nutr_defs#destroy", :id => "1")
    end

  end
end
