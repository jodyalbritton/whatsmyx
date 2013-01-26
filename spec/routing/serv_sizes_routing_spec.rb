require "spec_helper"

describe ServSizesController do
  describe "routing" do

    it "routes to #index" do
      get("/serv_sizes").should route_to("serv_sizes#index")
    end

    it "routes to #new" do
      get("/serv_sizes/new").should route_to("serv_sizes#new")
    end

    it "routes to #show" do
      get("/serv_sizes/1").should route_to("serv_sizes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/serv_sizes/1/edit").should route_to("serv_sizes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/serv_sizes").should route_to("serv_sizes#create")
    end

    it "routes to #update" do
      put("/serv_sizes/1").should route_to("serv_sizes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/serv_sizes/1").should route_to("serv_sizes#destroy", :id => "1")
    end

  end
end
