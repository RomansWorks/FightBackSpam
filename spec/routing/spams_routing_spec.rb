require "spec_helper"

describe SpamsController do
  describe "routing" do

    it "routes to #index" do
      get("/spams").should route_to("spams#index")
    end

    it "routes to #new" do
      get("/spams/new").should route_to("spams#new")
    end

    it "routes to #show" do
      get("/spams/1").should route_to("spams#show", :id => "1")
    end

    it "routes to #edit" do
      get("/spams/1/edit").should route_to("spams#edit", :id => "1")
    end

    it "routes to #create" do
      post("/spams").should route_to("spams#create")
    end

    it "routes to #update" do
      put("/spams/1").should route_to("spams#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/spams/1").should route_to("spams#destroy", :id => "1")
    end

  end
end
