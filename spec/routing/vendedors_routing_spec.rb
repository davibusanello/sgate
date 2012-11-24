require "spec_helper"

describe VendedorsController do
  describe "routing" do

    it "routes to #index" do
      get("/vendedors").should route_to("vendedors#index")
    end

    it "routes to #new" do
      get("/vendedors/new").should route_to("vendedors#new")
    end

    it "routes to #show" do
      get("/vendedors/1").should route_to("vendedors#show", :id => "1")
    end

    it "routes to #edit" do
      get("/vendedors/1/edit").should route_to("vendedors#edit", :id => "1")
    end

    it "routes to #create" do
      post("/vendedors").should route_to("vendedors#create")
    end

    it "routes to #update" do
      put("/vendedors/1").should route_to("vendedors#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/vendedors/1").should route_to("vendedors#destroy", :id => "1")
    end

  end
end
