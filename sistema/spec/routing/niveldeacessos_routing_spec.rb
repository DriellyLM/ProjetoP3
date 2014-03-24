require "spec_helper"

describe NiveldeacessosController do
  describe "routing" do

    it "routes to #index" do
      get("/niveldeacessos").should route_to("niveldeacessos#index")
    end

    it "routes to #new" do
      get("/niveldeacessos/new").should route_to("niveldeacessos#new")
    end

    it "routes to #show" do
      get("/niveldeacessos/1").should route_to("niveldeacessos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/niveldeacessos/1/edit").should route_to("niveldeacessos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/niveldeacessos").should route_to("niveldeacessos#create")
    end

    it "routes to #update" do
      put("/niveldeacessos/1").should route_to("niveldeacessos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/niveldeacessos/1").should route_to("niveldeacessos#destroy", :id => "1")
    end

  end
end
