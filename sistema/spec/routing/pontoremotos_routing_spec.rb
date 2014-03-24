require "spec_helper"

describe PontoremotosController do
  describe "routing" do

    it "routes to #index" do
      get("/pontoremotos").should route_to("pontoremotos#index")
    end

    it "routes to #new" do
      get("/pontoremotos/new").should route_to("pontoremotos#new")
    end

    it "routes to #show" do
      get("/pontoremotos/1").should route_to("pontoremotos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/pontoremotos/1/edit").should route_to("pontoremotos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/pontoremotos").should route_to("pontoremotos#create")
    end

    it "routes to #update" do
      put("/pontoremotos/1").should route_to("pontoremotos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/pontoremotos/1").should route_to("pontoremotos#destroy", :id => "1")
    end

  end
end
