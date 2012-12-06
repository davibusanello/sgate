require "spec_helper"

describe InstaladorsController do
  describe "routing" do

    it "routes to #index" do
      get("/instaladors").should route_to("instaladors#index")
    end

    it "routes to #new" do
      get("/instaladors/new").should route_to("instaladors#new")
    end

    it "routes to #show" do
      get("/instaladors/1").should route_to("instaladors#show", :id => "1")
    end

    it "routes to #edit" do
      get("/instaladors/1/edit").should route_to("instaladors#edit", :id => "1")
    end

    it "routes to #create" do
      post("/instaladors").should route_to("instaladors#create")
    end

    it "routes to #update" do
      put("/instaladors/1").should route_to("instaladors#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/instaladors/1").should route_to("instaladors#destroy", :id => "1")
    end

  end
end
