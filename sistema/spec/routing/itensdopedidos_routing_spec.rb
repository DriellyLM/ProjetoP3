require "spec_helper"

describe ItensdopedidosController do
  describe "routing" do

    it "routes to #index" do
      get("/itensdopedidos").should route_to("itensdopedidos#index")
    end

    it "routes to #new" do
      get("/itensdopedidos/new").should route_to("itensdopedidos#new")
    end

    it "routes to #show" do
      get("/itensdopedidos/1").should route_to("itensdopedidos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/itensdopedidos/1/edit").should route_to("itensdopedidos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/itensdopedidos").should route_to("itensdopedidos#create")
    end

    it "routes to #update" do
      put("/itensdopedidos/1").should route_to("itensdopedidos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/itensdopedidos/1").should route_to("itensdopedidos#destroy", :id => "1")
    end

  end
end
