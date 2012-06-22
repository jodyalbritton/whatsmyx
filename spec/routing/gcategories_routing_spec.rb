require "spec_helper"

describe GcategoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/gcategories").should route_to("gcategories#index")
    end

    it "routes to #new" do
      get("/gcategories/new").should route_to("gcategories#new")
    end

    it "routes to #show" do
      get("/gcategories/1").should route_to("gcategories#show", :id => "1")
    end

    it "routes to #edit" do
      get("/gcategories/1/edit").should route_to("gcategories#edit", :id => "1")
    end

    it "routes to #create" do
      post("/gcategories").should route_to("gcategories#create")
    end

    it "routes to #update" do
      put("/gcategories/1").should route_to("gcategories#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/gcategories/1").should route_to("gcategories#destroy", :id => "1")
    end

  end
end
