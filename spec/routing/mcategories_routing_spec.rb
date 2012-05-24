require "spec_helper"

describe McategoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/mcategories").should route_to("mcategories#index")
    end

    it "routes to #new" do
      get("/mcategories/new").should route_to("mcategories#new")
    end

    it "routes to #show" do
      get("/mcategories/1").should route_to("mcategories#show", :id => "1")
    end

    it "routes to #edit" do
      get("/mcategories/1/edit").should route_to("mcategories#edit", :id => "1")
    end

    it "routes to #create" do
      post("/mcategories").should route_to("mcategories#create")
    end

    it "routes to #update" do
      put("/mcategories/1").should route_to("mcategories#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/mcategories/1").should route_to("mcategories#destroy", :id => "1")
    end

  end
end
