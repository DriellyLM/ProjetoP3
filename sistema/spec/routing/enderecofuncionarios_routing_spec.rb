require "spec_helper"

describe EnderecofuncionariosController do
  describe "routing" do

    it "routes to #index" do
      get("/enderecofuncionarios").should route_to("enderecofuncionarios#index")
    end

    it "routes to #new" do
      get("/enderecofuncionarios/new").should route_to("enderecofuncionarios#new")
    end

    it "routes to #show" do
      get("/enderecofuncionarios/1").should route_to("enderecofuncionarios#show", :id => "1")
    end

    it "routes to #edit" do
      get("/enderecofuncionarios/1/edit").should route_to("enderecofuncionarios#edit", :id => "1")
    end

    it "routes to #create" do
      post("/enderecofuncionarios").should route_to("enderecofuncionarios#create")
    end

    it "routes to #update" do
      put("/enderecofuncionarios/1").should route_to("enderecofuncionarios#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/enderecofuncionarios/1").should route_to("enderecofuncionarios#destroy", :id => "1")
    end

  end
end
