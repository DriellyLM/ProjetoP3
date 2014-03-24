require "spec_helper"

describe TelefonefuncionariosController do
  describe "routing" do

    it "routes to #index" do
      get("/telefonefuncionarios").should route_to("telefonefuncionarios#index")
    end

    it "routes to #new" do
      get("/telefonefuncionarios/new").should route_to("telefonefuncionarios#new")
    end

    it "routes to #show" do
      get("/telefonefuncionarios/1").should route_to("telefonefuncionarios#show", :id => "1")
    end

    it "routes to #edit" do
      get("/telefonefuncionarios/1/edit").should route_to("telefonefuncionarios#edit", :id => "1")
    end

    it "routes to #create" do
      post("/telefonefuncionarios").should route_to("telefonefuncionarios#create")
    end

    it "routes to #update" do
      put("/telefonefuncionarios/1").should route_to("telefonefuncionarios#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/telefonefuncionarios/1").should route_to("telefonefuncionarios#destroy", :id => "1")
    end

  end
end
