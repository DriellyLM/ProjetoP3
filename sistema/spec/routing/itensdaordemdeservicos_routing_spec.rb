require "spec_helper"

describe ItensdaordemdeservicosController do
  describe "routing" do

    it "routes to #index" do
      get("/itensdaordemdeservicos").should route_to("itensdaordemdeservicos#index")
    end

    it "routes to #new" do
      get("/itensdaordemdeservicos/new").should route_to("itensdaordemdeservicos#new")
    end

    it "routes to #show" do
      get("/itensdaordemdeservicos/1").should route_to("itensdaordemdeservicos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/itensdaordemdeservicos/1/edit").should route_to("itensdaordemdeservicos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/itensdaordemdeservicos").should route_to("itensdaordemdeservicos#create")
    end

    it "routes to #update" do
      put("/itensdaordemdeservicos/1").should route_to("itensdaordemdeservicos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/itensdaordemdeservicos/1").should route_to("itensdaordemdeservicos#destroy", :id => "1")
    end

  end
end
