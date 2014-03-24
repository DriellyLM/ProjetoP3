require "spec_helper"

describe CargofuncionariosController do
  describe "routing" do

    it "routes to #index" do
      get("/cargofuncionarios").should route_to("cargofuncionarios#index")
    end

    it "routes to #new" do
      get("/cargofuncionarios/new").should route_to("cargofuncionarios#new")
    end

    it "routes to #show" do
      get("/cargofuncionarios/1").should route_to("cargofuncionarios#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cargofuncionarios/1/edit").should route_to("cargofuncionarios#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cargofuncionarios").should route_to("cargofuncionarios#create")
    end

    it "routes to #update" do
      put("/cargofuncionarios/1").should route_to("cargofuncionarios#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cargofuncionarios/1").should route_to("cargofuncionarios#destroy", :id => "1")
    end

  end
end
